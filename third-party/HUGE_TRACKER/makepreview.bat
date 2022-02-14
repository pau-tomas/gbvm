@set RRGBDS=..\..\..\rgbds\
mkdir build
del build\*.obj
%RRGBDS%\rgbasm -E -obuild\hUGEDriver.obj hUGEDriver.asm
%RRGBDS%\rgbasm -obuild\player.obj player.asm
%RRGBDS%\rgblink -opreview.gb -npreview.sym build\player.obj build\hUGEDriver.obj sample_song\song.obj
%RRGBDS%\rgbfix -v preview.gb