@echo off
fpc simple6.pas > NUL
for %%a in (tests\*.a) do (
  simple6.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del simple6.exe