@set RRGBDS=..\..\..\rgbds
%RRGBDS%\rgbasm -E -ohUGEDriver.obj hUGEDriver.asm
%RRGBDS%\rgbasm -oplayer.obj player.asm
%RRGBDS%\rgblink -opreview.gb -npreview.sym player.obj hUGEDriver.obj sample_song\song.obj
%RRGBDS%\rgbfix -v preview.gb
@del /Q *.obj
