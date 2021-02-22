@echo off
fpc simple5.pas > NUL
for %%a in (tests\*.a) do (
  simple5.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del simple5.exe