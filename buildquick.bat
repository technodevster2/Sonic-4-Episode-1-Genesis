@echo ------------------------------------------------------------------------------
@echo Sonic The Hedgehog 4 (W)(Genesis)			   
@echo ------------------------------------------------------------------------------
@echo Special Thanks:
@echo Redhotsonic, Flamewing, MarkeyJester, Selbi, Puto (XM4SMPS)
@echo Oregg86, Trox, OuricoDoido, RavenFreak, Xenowhirl (SonMapEd)
@echo and anyone else who I've forgotten. Thanks for your tools and help
@echo as I would not have been able to get this far in this project without your
@echo support. Any errors when building will appear in "errors.txt"
@echo ------------------------------------------------------------------------------
@echo ------------------------------------------------------------------------------
@echo off

cd rings
rings.exe
cd ..

asm68k /k /o op+ /o os+ /o ow+ /o oz+ /o oaq+ /o osq+ /o omq+ /p /o ae- sonic1.asm, s1built.bin >errors.txt, sonic.sym, sonic.lst
convsym sonic.sym sonic.symcmp
copy /B s1built.bin+sonic.symcmp s1built.bin /Y
del sonic.symcmp

cd SMPS Flamewing
build.bat

cd ..



rem rompad.exe s1built.bin 255 0
rem fixheadr.exe s1built.bin
pause