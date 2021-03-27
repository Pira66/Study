@echo off
fpc %~n0.lpr > NUL
%~n0.exe 20 100
del %~n0.exe %~n0.o