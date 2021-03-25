@echo off
fpc %~n0.lpr > NUL
%~n0.exe 10 300
del %~n0.exe %~n0.o