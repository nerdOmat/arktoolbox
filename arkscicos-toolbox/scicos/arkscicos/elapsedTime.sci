clearfun('elapsedTime');
function [x,y,typ]=elapsedTime(job,arg1,arg2)
//Generated from SuperBlock on 13-Mar-2011
x=[];y=[];typ=[];
select job
case 'plot' then
  standard_draw(arg1)
case 'getinputs' then
  [x,y,typ]=standard_inputs(arg1)
case 'getoutputs' then
  [x,y,typ]=standard_outputs(arg1)
case 'getorigin' then
  [x,y]=standard_origin(arg1)
case 'set' then
x=arg1,return
case 'define' then
scs_m_1=scicos_diagram(..
        version="scicos4.4",..
        props=scicos_params(..
              wpar=[-1164.16281657,-697.6020558525,1243.687132898,1520.487132898,441,265,17,30,406,..
              265,436,187,0.972222222222],..
              Title=["SuperBlock","/hsl/homes/jgoppert/Projects/oooark/oooark-toolbox/demos/"],..
              tol=[0.000001,0.000001,0.0000000001,31,0,0],..
              tf=30,..
              context=" ",..
              void1=[],..
              options=tlist(["scsopt","3D","Background","Link","ID","Cmap"],list(%t,33),[8,1],[1,5,2],..
              list([4,1,10,1],[4,1,2,1]),[0.8,0.8,0.8]),..
              void2=[],..
              void3=[],..
              doc=list()))
scs_m_1.objs(1)=scicos_block(..
                gui="TIME_f",..
                graphics=scicos_graphics(..
                         orig=[-1087.654930787,1324.51399603],..
                         sz=[40,40],..
                         flip=%t,..
                         theta=0,..
                         exprs=[],..
                         pin=[],..
                         pout=10,..
                         pein=[],..
                         peout=[],..
                         gr_i=list(..
                         ["wd=xget(''wdim'').*[1.016,1.12];";
                         "thick=xget(''thickness'');xset(''thickness'',2);";
                         "p=wd(2)/wd(1);p=1;";
                         "rx=sz(1)*p/2;ry=sz(2)/2;";
                         "xarc(orig(1)+0.05*sz(1),orig(2)+0.95*sz(2),0.9*sz(1)*p,0.9*sz(2),0,360*64);";
                         "xset(''thickness'',1);";
                         "xx=[orig(1)+rx    orig(1)+rx;";
                         "orig(1)+rx    orig(1)+rx+0.6*rx*cos(%pi/6)];";
                         "yy=[orig(2)+ry    orig(2)+ry ;";
                         "   orig(2)+1.8*ry  orig(2)+ry+0.6*ry*sin(%pi/6)];";
                         "xsegs(xx,yy,0);";
                         "xset(''thickness'',thick);"],8),..
                         id="",..
                         in_implicit=[],..
                         out_implicit="E"),..
                model=scicos_model(..
                         sim="timblk",..
                         in=[],..
                         in2=[],..
                         intyp=1,..
                         out=1,..
                         out2=[],..
                         outtyp=1,..
                         evtin=[],..
                         evtout=[],..
                         state=[],..
                         dstate=[],..
                         odstate=list(),..
                         rpar=[],..
                         ipar=[],..
                         opar=list(),..
                         blocktype="c",..
                         firing=[],..
                         dep_ut=[%f,%t],..
                         label="",..
                         nzcross=0,..
                         nmode=0,..
                         equations=list()),..
                doc=list())
scs_m_1.objs(2)=scicos_block(..
                gui="SUMMATION",..
                graphics=scicos_graphics(..
                         orig=[-878.4435361768,1324.51399603],..
                         sz=[40,60],..
                         flip=%t,..
                         theta=0,..
                         exprs=["1";"[1;-1]";"0"],..
                         pin=[14;11],..
                         pout=15,..
                         pein=[],..
                         peout=[],..
                         gr_i=list(..
                         ["[x,y,typ]=standard_inputs(o) ";
                         "dd=sz(1)/8,de=0,";
                         "if ~arg1.graphics.flip then dd=6*sz(1)/8,de=-sz(1)/8,end";
                         "for k=1:size(x,''*'')";
                         "if size(sgn,1)>1 then";
                         "  if sgn(k)>0 then";
                         "    xstring(orig(1)+dd,y(k)-4,''+'')";
                         "  else";
                         "    xstring(orig(1)+dd,y(k)-4,''-'')";
                         "  end";
                         "end";
                         "end";
                         "xx=sz(1)*[.8 .4 0.75 .4 .8]+orig(1)+de";
                         "yy=sz(2)*[.8 .8 .5 .2 .2]+orig(2)";
                         "xpoly(xx,yy,''lines'')"],8),..
                         id="",..
                         in_implicit=["E";"E"],..
                         out_implicit="E"),..
                model=scicos_model(..
                         sim=list("summation",4),..
                         in=[-1;-1],..
                         in2=[-2;-2],..
                         intyp=[1;1],..
                         out=-1,..
                         out2=-2,..
                         outtyp=1,..
                         evtin=[],..
                         evtout=[],..
                         state=[],..
                         dstate=[],..
                         odstate=list(),..
                         rpar=0,..
                         ipar=[1;-1],..
                         opar=list(),..
                         blocktype="c",..
                         firing=[],..
                         dep_ut=[%t,%f],..
                         label="",..
                         nzcross=0,..
                         nmode=0,..
                         equations=list()),..
                doc=list())
scs_m_1.objs(3)=mlist("Deleted")
scs_m_1.objs(4)=scicos_block(..
                gui="zeroOrderHold",..
                graphics=scicos_graphics(..
                         orig=[-971.085252637,1324.51399603],..
                         sz=[40,40],..
                         flip=%t,..
                         theta=0,..
                         exprs=["0";"0";"0"],..
                         pin=13,..
                         pout=11,..
                         pein=8,..
                         peout=[],..
                         gr_i=list("xstringb(orig(1),orig(2),''1/z'',sz(1),sz(2),''fill'')",8),..
                         id="",..
                         in_implicit="E",..
                         out_implicit="E"),..
                model=scicos_model(..
                         sim=list("sci_zeroOrderHold",4),..
                         in=-1,..
                         in2=-2,..
                         intyp=-1,..
                         out=-1,..
                         out2=-2,..
                         outtyp=-1,..
                         evtin=1,..
                         evtout=[],..
                         state=[],..
                         dstate=0,..
                         odstate=list(),..
                         rpar=[],..
                         ipar=[1;0],..
                         opar=list(),..
                         blocktype="d",..
                         firing=[],..
                         dep_ut=[%f,%f],..
                         label="",..
                         nzcross=0,..
                         nmode=0,..
                         equations=list()),..
                doc=list())
scs_m_1.objs(5)=mlist("Deleted")
scs_m_1.objs(6)=mlist("Deleted")
scs_m_1.objs(7)=scicos_block(..
                gui="CLKINV_f",..
                graphics=scicos_graphics(..
                         orig=[-961.085252637,1400.228281744],..
                         sz=[20,30],..
                         flip=%t,..
                         theta=0,..
                         exprs="1",..
                         pin=[],..
                         pout=[],..
                         pein=[],..
                         peout=8,..
                         gr_i=list(..
                         ["xo=orig(1);yo=orig(2)+sz(2)/3";"xstringb(xo,yo,string(prt),sz(1),sz(2)/1.5)"],..
                         8),..
                         id="",..
                         in_implicit=[],..
                         out_implicit=[]),..
                model=scicos_model(..
                         sim="input",..
                         in=[],..
                         in2=[],..
                         intyp=1,..
                         out=[],..
                         out2=[],..
                         outtyp=1,..
                         evtin=[],..
                         evtout=1,..
                         state=[],..
                         dstate=[],..
                         odstate=list(),..
                         rpar=[],..
                         ipar=1,..
                         opar=list(),..
                         blocktype="d",..
                         firing=-1,..
                         dep_ut=[%f,%f],..
                         label="",..
                         nzcross=0,..
                         nmode=0,..
                         equations=list()),..
                doc=list())
scs_m_1.objs(8)=scicos_link(..
                  xx=[-951.085252637;-951.085252637],..
                  yy=[1400.228281744;1370.228281744],..
                  id="",..
                  thick=[0,0],..
                  ct=[5,-1],..
                  from=[7,1,0],..
                  to=[4,1,1])
scs_m_1.objs(9)=scicos_block(..
                gui="OUT_f",..
                graphics=scicos_graphics(..
                         orig=[-804.6933978532,1344.51399603],..
                         sz=[20,20],..
                         flip=%t,..
                         theta=0,..
                         exprs="1",..
                         pin=15,..
                         pout=[],..
                         pein=[],..
                         peout=[],..
                         gr_i=list(" ",8),..
                         id="",..
                         in_implicit="E",..
                         out_implicit=[]),..
                model=scicos_model(..
                         sim="output",..
                         in=-1,..
                         in2=-2,..
                         intyp=-1,..
                         out=[],..
                         out2=[],..
                         outtyp=1,..
                         evtin=[],..
                         evtout=[],..
                         state=[],..
                         dstate=[],..
                         odstate=list(),..
                         rpar=[],..
                         ipar=1,..
                         opar=list(),..
                         blocktype="c",..
                         firing=[],..
                         dep_ut=[%f,%f],..
                         label="",..
                         nzcross=0,..
                         nmode=0,..
                         equations=list()),..
                doc=list())
scs_m_1.objs(10)=scicos_link(..
                   xx=[-1039.083502215;-1007.26280016],..
                   yy=[1344.51399603;1344.51399603],..
                   id="",..
                   thick=[0,0],..
                   ct=[1,1],..
                   from=[1,1,0],..
                   to=[12,1,1])
scs_m_1.objs(11)=scicos_link(..
                   xx=[-922.5138240656;-887.0149647483],..
                   yy=[1344.51399603;1344.51399603],..
                   id="",..
                   thick=[0,0],..
                   ct=[1,1],..
                   from=[4,1,0],..
                   to=[2,2,1])
scs_m_1.objs(12)=scicos_block(..
                 gui="SPLIT_f",..
                 graphics=scicos_graphics(..
                          orig=[-1007.26280016;1344.51399603],..
                          sz=[0.333333333333,0.333333333333],..
                          flip=%t,..
                          theta=0,..
                          exprs=[],..
                          pin=10,..
                          pout=[13;14],..
                          pein=[],..
                          peout=[],..
                          gr_i=list([],8),..
                          id="",..
                          in_implicit="E",..
                          out_implicit=["E";"E";"E"]),..
                 model=scicos_model(..
                          sim="lsplit",..
                          in=-1,..
                          in2=[],..
                          intyp=1,..
                          out=[-1;-1;-1],..
                          out2=[],..
                          outtyp=1,..
                          evtin=[],..
                          evtout=[],..
                          state=[],..
                          dstate=[],..
                          odstate=list(),..
                          rpar=[],..
                          ipar=[],..
                          opar=list(),..
                          blocktype="c",..
                          firing=[],..
                          dep_ut=[%t,%f],..
                          label="",..
                          nzcross=0,..
                          nmode=0,..
                          equations=list()),..
                 doc=list())
scs_m_1.objs(13)=scicos_link(..
                   xx=[-1007.26280016;-979.6566812085],..
                   yy=[1344.51399603;1344.51399603],..
                   id="",..
                   thick=[0,0],..
                   ct=[1,1],..
                   from=[12,1,0],..
                   to=[4,1,1])
scs_m_1.objs(14)=scicos_link(..
                   xx=[-1007.26280016;-1007.26280016;-902.8542414331;-902.8542414331;-887.0149647483],..
                   yy=[1344.51399603;1382.537559023;1382.537559023;1364.51399603;1364.51399603],..
                   id="",..
                   thick=[0,0],..
                   ct=[1,1],..
                   from=[12,2,0],..
                   to=[2,1,1])
scs_m_1.objs(15)=scicos_link(..
                   xx=[-829.8721076054;-804.6933978532],..
                   yy=[1354.51399603;1354.51399603],..
                   id="",..
                   thick=[0,0],..
                   ct=[1,1],..
                   from=[2,1,0],..
                   to=[9,1,1])
  model=scicos_model()
  model.sim="csuper"
  model.in=[]
  model.in2=[]
  model.intyp=1
  model.out=-1
  model.out2=-2
  model.outtyp=-1
  model.evtin=1
  model.evtout=[]
  model.state=[]
  model.dstate=[]
  model.odstate=list()
  model.rpar=scs_m_1
  model.ipar=1
  model.opar=list()
  model.blocktype="h"
  model.firing=[]
  model.dep_ut=[%f,%f]
  model.label=""
  model.nzcross=0
  model.nmode=0
  model.equations=list()
  exprs=[]
  gr_i=list("xstringb(orig(1),orig(2),[''elapsed'';''time''],sz(1),sz(2),''fill'');",8)
  x=standard_define([2,2],model,exprs,gr_i)
end
endfunction