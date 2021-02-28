@echo off
fpc %~n0.lpr > NUL
%~n0 5 101 > tests\10
%~n0 10 201 > tests\11
%~n0 20 301 > tests\12
%~n0 30 501 > tests\13
%~n0 40 601 > tests\14
del %~n0.o %~n0.exe
fpc full_search.pas > NUL
for %%a in (tests\1?) do full_search.exe < tests\%%~na > tests\%%~na.a
del full_search.o full_search.exe  