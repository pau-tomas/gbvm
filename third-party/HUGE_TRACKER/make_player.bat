@set RRGBDS=..\..\..\rgbds
%RRGBDS%\rgbasm -E -oobj\hUGEDriver.obj hUGEDriver.asm
%RRGBDS%\rgbasm -oobj\player.obj player.asm
%RRGBDS%\rgblink -obuild\preview.gb -nbuild\preview.sym obj\player.obj obj\hUGEDriver.obj sample_song\song.obj
%RRGBDS%\rgbfix -v build\preview.gb
