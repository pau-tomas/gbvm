@echo off

@set RRGBDS=..\..\..\rgbds\
@set RGB2SDAS=..\..\..\rgb2sdas\
@set GBDK=..\..\..\gbdk\bin\

@set CVTFLAGS=-b0

@del /Q hUGEDriver.lib

%RRGBDS%\rgbasm -DGBDK -ohUGEDriver.obj hUGEDriver.asm
%RGB2SDAS%\rgb2sdas %CVTFLAGS% hUGEDriver.obj
%GBDK%\sdar -ru hUGEDriver.lib hUGEDriver.obj.o

@del /Q *.obj
@del /Q *.o
