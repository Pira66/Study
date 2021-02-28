@echo off
fpc %~n0.lpr > NUL
%~n0 5 -20 20 > tests\10
%~n0 10 -30 30 > tests\11
%~n0 20 -50 50 > tests\12
%~n0 30 -60 60 > tests\13
%~n0 50 -90 90 > tests\14
del %~n0.o %~n0.exe
fpc full_search.lpr > NUL
for %%a in (tests\1?) do full_search.exe < tests\%%~na > tests\%%~na.a
del full_search.o full_search.exe