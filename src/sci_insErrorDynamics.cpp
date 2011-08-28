/*sci_insErrorDynamics.cpp
 * Copyright (C) Alan Kim, James Goppert 2011 
 * 
 * sci_insErrorDynamics.cpp is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * sci_insErrorDynamics.cpp is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 *
 * u1: wx, wy, wz, fn, fe, fd
 * u2: a, b, c, d, Vn, Ve, Vd, Lat, Lon, alt
 *
 * Out1 = F (10x10)
 * Out2 = G (10x6)
 *
 * for del_x_dot = F*del_x + G*u
 * where u del_x is the error state of INS
 * and u is the inputs to the INS error dynamics
 *
 */

#define BOOST_UBLAS_SHALLOW_ARRAY_ADAPTOR 1

#include <iostream>
#include <string>
#include <cstdlib>
#include "arkmath/GpsIns.hpp"
#include "arkmath/storage_adaptors.hpp"
#include "utilities.hpp"
#include <stdexcept>
#include <boost/numeric/ublas/matrix.hpp>

extern "C"
{

#include <scicos/scicos_block4.h>
#include <math.h>
#include "definitions.hpp"

void sci_insErrorDynamics(scicos_block *block, scicos::enumScicosFlags flag)
{
    enum ins_mode {INS_FULL_STATE=0,INS_ATT_STATE=1,INS_VP_STATE=2};

    // constants

    // data
    double * u1=(double*)GetInPortPtrs(block,1);
    double * u2=(double*)GetInPortPtrs(block,2);
    double * y1=(double*)GetOutPortPtrs(block,1);
    double * y2=(double*)GetOutPortPtrs(block,2);
    double * rpar=block->rpar;
    int * ipar=block->ipar;

    // alias names
    double & wx = u1[0];
    double & wy = u1[1];
    double & wz = u1[2];
    double & fx = u1[3];
    double & fy = u1[4];
    double & fz = u1[5];
   
    // Note that l = lon, and not in the equations but left here
    // for ease of use with full state vector x
    double & a      = u2[0];
    double & b      = u2[1];
    double & c      = u2[2];
    double & d      = u2[3];
    double & Vn     = u2[4];
    double & Ve     = u2[5];
    double & Vd     = u2[6];
    double & L      = u2[7];
    double & l      = u2[8];
    double & alt    = u2[9];

    double & Omega = rpar[0];
    double & Re = rpar[1];
    int & mode = ipar[0];

    // sizes
    int nX = 0, nU = 0;
    if (mode == INS_FULL_STATE) nX = 10, nU = 6;
    else if (mode == INS_ATT_STATE) nX = 4, nU = 3;
    else if (mode == INS_VP_STATE) nX = 6, nU = 3;
    else Coserror((char *)"unknown mode for insErrorDynamics block");

    // matrices
    using namespace boost::numeric::ublas;
    matrix<double,column_major, shallow_array_adaptor<double> > F(nX,nX,shallow_array_adaptor<double>(nX*nX,y1));
    matrix<double,column_major, shallow_array_adaptor<double> > G(nX,nU,shallow_array_adaptor<double>(nX*nU,y2));

    //handle flags
    if (flag==scicos::computeOutput)
    {
        // temporaries to speed up computation
        const double cosL = cos(L);
        const double sinL = sin(L);
        const double tanL = cosL/sinL;
        const double cosLcosL = cosL*cosL;     
        const double secLsecL = 1/cosLcosL;
        const double R = Re+alt;
        const double aa = a*a;
        const double bb = b*b;
        const double cc = c*c;
        const double dd = d*d;
        const double aaa = aa*a;
        const double bbb = bb*b;
        const double ccc = cc*c;
        const double ddd = dd*d;
        const double RR = R*R;
        
        // compute updated matrices
        if (mode==INS_FULL_STATE)
        { 
            // include autogenerated matrices
            #include "navigation/ins_error_dynamics_F.hpp"
            #include "navigation/ins_error_dynamics_G.hpp"
        }
        else if (mode==INS_ATT_STATE)
        { 
            // include autogenerated matrices
            #define F_att F
            #define G_att F
            #include "navigation/ins_error_dynamics_F_att.hpp"
            #include "navigation/ins_error_dynamics_G_att.hpp"
        }
        else if (mode==INS_VP_STATE)
        { 
            // include autogenerated matrices
            #define F_vp F
            #define G_vp G
            #include "navigation/ins_error_dynamics_F_vp.hpp"
            #include "navigation/ins_error_dynamics_G_vp.hpp"
        }
        else
        {
            Coserror((char *)"unknown mode for insErrorDynamics block");
        }
    }
    else if (flag==scicos::terminate)
    {
    }
    else if (flag==scicos::initialize || flag==scicos::reinitialize)
    {
        if (mode==INS_FULL_STATE)
        { 
            F = make_matrix_from_pointer(10,10,y1);
            G = make_matrix_from_pointer(10,6,y2);
        }
        else if (mode==INS_ATT_STATE)
        { 
            F = make_matrix_from_pointer(4,4,y1);
            G = make_matrix_from_pointer(4,3,y2);
        }
        else if (mode==INS_VP_STATE)
        { 
            F = make_matrix_from_pointer(6,6,y1);
            G = make_matrix_from_pointer(6,3,y2);
        }
    }
    else
    {
        std::cout << "unhandled block flag: " << flag << std::endl;
    }
}

} // extern c

// vim:ts=4:sw=4:expandtab
