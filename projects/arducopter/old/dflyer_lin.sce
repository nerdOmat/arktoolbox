x0=..
[   5.6843418861e-14;
    0.0000000000e+00;
   -0.0000000000e+00;
    0.0000000000e+00;
    1.0000000000e+03;
    0.0000000000e+00;
    0.0000000000e+00;
    0.0000000000e+00;
    0.0000000000e+00;
    1.5707963268e+00;
    0.0000000000e+00;
    0.0000000000e+00;
    1.6308973495e+03];
u0=..
[   5.0000000000e-01;
    2.5000000000e-02;
    1.0417175293e-02;
    0.0000000000e+00];
sys = syslin('c',..
[   1.9728179523e-02,   -3.1076573272e+01,    9.4185378626e+01,    0.0000000000e+00,   -8.2986916218e-11,    0.0000000000e+00,   -6.6803530845e-11,    0.0000000000e+00,    0.0000000000e+00,    2.9076606436e-12,    1.2960644760e+02,   -1.0316745748e-10,   -2.0733916442e-09;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -4.7785957105e-08,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    2.6549345585e-09,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    2.9314630444e-09,   -2.2217109518e-13,    0.0000000000e+00,   -2.5634605116e-13,   -2.7614403458e-13,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -2.1642781916e-11;
    0.0000000000e+00,   -5.6843442737e-14,    5.6843442737e-14,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -4.2072042150e-26,    0.0000000000e+00,    0.0000000000e+00,   -5.5466055478e-31,    4.2036686943e-14,   -5.5199007604e-26,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    2.7163183184e-21,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -6.3670179607e-09,    1.5680791061e-08,    0.0000000000e+00,    0.0000000000e+00,   -7.0352368543e-09,    0.0000000000e+00,   -2.6592510836e-09,    0.0000000000e+00,   -3.6467490058e-05,    0.0000000000e+00,    0.0000000000e+00,    2.6592510836e-09,    0.0000000000e+00;
   -1.1917716724e-13,   -6.2724823230e-15,    0.0000000000e+00,    0.0000000000e+00,    7.5269792701e-14,    0.0000000000e+00,    0.0000000000e+00,   -6.2038545941e-21,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    4.7785957129e-08,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -1.4797385405e-17,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    2.5077212818e-33,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    1.0610613974e-23,    0.0000000000e+00,   -1.2557111277e-34,    0.0000000000e+00,   -2.8822078426e-44,   -2.7163183184e-21,    1.2562423288e-34,    0.0000000000e+00,    0.0000000000e+00,   -2.7163183184e-21,    1.9114152715e-36,   -1.9812215867e-36,    0.0000000000e+00;
    3.5755034560e+00,    9.7770680441e-07,   -9.5496943686e-07,    2.5011104299e-07,    4.0922577682e-02,   -1.1368683772e-07,   -9.5496943686e-07,    0.0000000000e+00,   -1.3642420527e-07,    0.0000000000e+00,   -9.7770680441e-07,    6.5938365879e-07,   -2.5564399493e+00],..
[  -1.7690231045e-02,   -1.4261875618e-02,   -1.1686891679e-02,   -9.5733604638e-03;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    1.9876218105e-01,    1.6283211882e-01,    1.5117099730e-01,    1.0938614428e-01;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -1.9738236324e-02,   -3.3959207418e-02,   -1.3366974655e-02,   -1.0947434951e-02;
   -1.7717541538e-05,   -1.6624750145e-05,   -1.3772007664e-05,    2.6447965690e-03;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    3.0318259488e+03,    2.9393008390e+00,   -1.4615225760e+03,   -7.3168502449e+02],..
[  -7.3607786533e-10,    1.9242232775e-17,   -1.9242232743e-17,    0.0000000000e+00,   -3.1946667646e-10,    0.0000000000e+00,   -4.2072581612e-26,    0.0000000000e+00,    0.0000000000e+00,    5.2590727015e-27,   -3.2196474363e-11,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -3.9328304430e-13,    0.0000000000e+00,    0.0000000000e+00,    7.0965465455e-13,   -1.8571440407e-13,   -6.9007371996e-14,    0.0000000000e+00;
   -4.7785957196e-08,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000231365e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    2.4835268656e-05,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,   -2.5150102335e-13,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    6.5344823489e-14,   -5.3502980195e-13,    8.9165332701e-14,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    2.7163183184e-21,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -1.6604989152e-24,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.6653345369e-12,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    1.8503717077e-13,    1.4802973662e-12,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.5756761752e-17,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,    0.0000000000e+00;
   -4.2512877675e-02,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    3.4861481405e-04,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    9.7822204585e-01],..
[   0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -1.9575282323e+01,   -2.4078161516e-01,    9.2734735015e+00,    4.7068251790e+00]);
tfm = ss2tf(sys);

