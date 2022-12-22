@set RRGBDS=..\..\..\rgbds
@set UGE2SOUR=..\..\..\uge2source
%UGE2SOUR%\uge2source "sample_song\Coffee Bat - Wyrmhole.uge" SONG_DESCRIPTOR sample_song\song.asm
%RRGBDS%\rgbasm -osample_song\song.obj sample_song\song.asm
