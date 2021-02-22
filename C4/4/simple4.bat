@echo off
fpc simple4.pas > NUL
for %%a in (tests\*.a) do (
  simple4.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del simple4.exe