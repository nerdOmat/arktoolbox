x0=..
[   6.0058829190e+02;
    3.0092790640e-02;
    2.2785549594e-02;
   -8.8319761122e-04;
    9.9869517640e+03;
    2.0075099270e-03;
   -1.8161930139e-02;
   -3.4757608571e-03;
   -1.2765378200e-03;
    1.5662741060e+00;
    1.3379816961e-04;
   -6.9081271453e-08];
u0=..
[   3.2172135582e-01;
    0.0000000000e+00;
   -1.7525148585e-02;
    3.0179176894e-02];
sys = syslin('c',..
[   2.1504509909e-01,    5.6608723924e+00,   -3.1998020423e+01,   -1.5830394332e+00,   -7.0396033135e-02,   -1.2208525841e-02,   -2.6052349405e-03,    1.6460178297e+00,    2.9546903340e-02,   -1.0785596259e-06,    5.5187336182e-11,   -2.1901601121e-04;
   -1.7521782071e-04,   -8.8237881657e-01,    4.1093710938e-04,    9.9455829719e-01,   -2.4034361706e-04,    3.5068591271e-03,    9.5805741118e-04,    8.5781875194e-03,    4.1165029391e-05,   -3.1009682951e-07,   -5.2405024945e-12,    6.5458946409e-06;
   -4.7764013249e-08,    2.1216142676e-07,   -2.0963255844e-07,    9.9983507668e-01,    1.3705218962e-12,    7.3274471975e-08,    1.2602853925e-03,    0.0000000000e+00,    1.8160931686e-02,    0.0000000000e+00,   -9.0350181040e-17,    2.8912057933e-15;
    7.2176962345e-05,   -5.3836705295e+00,   -4.2104520096e-03,    1.1843656021e+00,    5.2665907231e-02,   -3.8947804707e-03,    1.4939026153e-03,   -2.6960318930e-01,   -2.5404003132e-02,    9.0227745595e-07,   -2.7278526660e-12,    8.7199124305e-07;
   -7.3074838965e-03,   -6.0057558701e+02,    6.0057055020e+02,    0.0000000000e+00,    1.1842378929e-11,   -8.1061760131e-02,    1.1388908991e-02,    0.0000000000e+00,    0.0000000000e+00,    8.0010072641e-10,   -8.6005276974e-10,   -6.5873232794e-10;
    1.1035506795e-06,   -3.6995484667e-03,    1.2825465892e-04,   -9.2672429436e-07,    3.0910703639e-08,   -2.9438361352e-01,    5.3092174209e-02,    3.0237255558e-02,   -9.8958132376e-01,    7.9612466411e-07,   -3.2074314269e-14,    3.5953792623e-04;
    1.2200490907e-10,    7.3847780755e-07,   -1.2609380787e-03,   -4.1312012480e-04,   -4.6982094141e-15,    5.1773290972e-05,   -2.4720100115e-05,    1.0000000000e+00,    2.2743986861e-02,    0.0000000000e+00,    3.6140072416e-16,    2.8912057933e-15;
   -1.2006511259e-05,   -2.8285541851e-01,    3.4530325291e-07,    6.7786620848e-04,   -1.3701809871e-06,   -3.0066480152e+01,    4.5060841725e-05,    3.6988042585e-01,    1.7140151504e+00,    3.1914064846e-04,    2.2226144536e-14,   -4.9106297461e-05;
   -1.7299593814e-06,    3.8502525987e-03,   -5.8913171424e-09,    2.4441730594e-03,   -1.4525857071e-06,    8.8505942822e+00,   -2.3362335663e-05,   -9.5065539441e-03,   -8.8145977915e-01,   -1.6425385598e-04,   -1.0954959451e-14,    2.5345818328e-05;
    2.7777259659e-12,    1.6750889232e-08,   -2.8602814969e-05,   -1.8165629853e-02,    0.0000000000e+00,    1.1760796314e-06,   -9.0656268094e-04,    0.0000000000e+00,    1.0000937304e+00,    3.0719061554e-15,    1.8070036208e-16,   -2.8686557097e-05;
    4.7764076415e-08,   -2.0980430756e-07,    2.0963041380e-07,    0.0000000000e+00,   -1.3702056706e-12,    5.6434697162e-08,   -1.6928403536e-09,    0.0000000000e+00,    0.0000000000e+00,    5.6470789382e-08,   -9.5997067355e-17,   -1.9816731083e-12;
    9.4025751613e-11,   -5.2170670701e-07,    9.4800143655e-10,    0.0000000000e+00,   -2.6974194339e-15,   -2.8682596227e-05,    8.6196416475e-07,    0.0000000000e+00,    0.0000000000e+00,   -2.8686557098e-05,    4.3581389207e-17,    3.1443892352e-17],..
[   5.1064126472e+01,    7.1461190333e+01,    1.0738401651e+01,   -7.9868427420e-04;
   -2.5607907712e-03,    5.2079811691e-01,    3.6913287966e-02,   -2.7454797040e-06;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -1.7062082217e-01,    3.1770492248e-01,   -8.0340346256e+00,    7.0022054844e-04;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -1.7068726829e-04,   -8.3704493466e-03,   -1.3236145917e-08,    1.2300762746e-02;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
   -6.2258050775e-08,    1.7788475202e+01,    6.9605540848e-04,    2.1145877703e+00;
    1.9603075108e-08,    9.0883434609e-01,   -2.8941855307e-05,   -1.0880050255e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00],..
[   1.0000000008e+00,   -2.4632148173e-09,    2.2737367544e-09,    0.0000000000e+00,    1.5158245030e-09,   -5.6843418861e-10,   -1.6105635344e-09,    0.0000000000e+00,    0.0000000000e+00,   -9.4739031435e-11,   -1.6105635344e-09,   -2.8421709430e-10;
    2.0238440553e-14,    1.0000000000e+00,   -3.3537987202e-13,    0.0000000000e+00,   -2.3129646346e-14,    1.1564823173e-14,    8.3844968006e-14,    0.0000000000e+00,    0.0000000000e+00,   -4.4813689796e-13,    1.8792837656e-13,    2.0238440553e-14;
    0.0000000000e+00,   -1.7256311478e-04,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -1.8306460198e-02,    2.5719865608e-03,    0.0000000000e+00,    0.0000000000e+00,    5.9558839342e-13,   -1.2085240216e-12,   -1.0523989088e-12;
   -4.7756185761e-08,    2.1191198346e-07,   -2.1092804198e-07,    1.0000000000e+00,    1.3706122464e-12,    6.1440458479e-08,   -5.2115843578e-07,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    5.2083986574e-07;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000231365e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -6.2088171641e-06,    0.0000000000e+00;
    3.9754079658e-15,   -1.0299920639e-13,    6.2124784483e-13,    0.0000000000e+00,    2.8912057933e-15,    1.0000000000e+00,    3.1405722930e-13,    0.0000000000e+00,    0.0000000000e+00,    4.0693721541e-13,   -3.5778671692e-13,   -3.5778671692e-14;
    0.0000000000e+00,   -3.5561831258e-13,   -7.8929918157e-13,    0.0000000000e+00,    0.0000000000e+00,   -2.9490299092e-13,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -1.5323390704e-13,    2.8912057933e-15,    9.3964188282e-13;
    1.2194238674e-10,    5.2061869464e-07,   -1.6679644500e-09,    0.0000000000e+00,   -4.6982094141e-15,    2.8675170530e-05,   -8.6174436908e-07,    1.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    6.5238553094e-07;
   -8.6466189388e-10,    1.5659602702e-08,    6.9418114016e-08,    0.0000000000e+00,    2.4936649967e-14,    6.5217725010e-07,    2.8662367241e-05,    0.0000000000e+00,    1.0000000000e+00,    3.0719061554e-15,    0.0000000000e+00,   -2.8674408051e-05;
    0.0000000000e+00,    1.6653345369e-12,    1.8503717077e-13,    0.0000000000e+00,    0.0000000000e+00,   -1.2952601954e-12,   -5.5511151231e-13,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,   -2.9605947323e-12,   -1.8503717077e-12;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -2.0328790734e-16,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.0000000000e+00,   -2.2587545260e-17;
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    1.1029074834e-20,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,   -9.9261673506e-20,    1.0000000000e+00],..
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
    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00,    0.0000000000e+00]);
tfm = ss2tf(sys);

