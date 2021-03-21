@echo off
fpc %~n0.pas > NUL
%~n0.exe 10 100
del %~n0.exe %~n0.o