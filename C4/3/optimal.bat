@echo off
fpc %~n0.pas > NUL
for %%a in (tests\*.a) do (
  %~n0.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del %~n0.exe %~n0.o

