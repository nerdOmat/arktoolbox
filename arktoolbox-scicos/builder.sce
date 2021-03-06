mode(-1);
lines(0);

origDir=pwd();
mainpathB=get_absolute_file_path('builder.sce');
arktoolboxPath=get_absolute_file_path('builder.sce');

chdir(mainpathB);

if isdir('src') then
  chdir('src');
  exec('buildsrc.sce');
  chdir('..');
end

if isdir('sci_gateway') then
  chdir('sci_gateway');
  exec('buildsci_gateway.sce');
  chdir('..');
end

if isdir('macros') then
  chdir('macros');
  exec('buildmacros.sce');
  chdir('..');
end

if isdir('help') then
  chdir('help');
  exec('buildhelp.sce');
  chdir('..');
end

if isdir('scicos') then
  chdir('scicos');
  exec('buildscicos.sce');
  chdir('..');
end

chdir(origDir)

clear mainpathB origDir

