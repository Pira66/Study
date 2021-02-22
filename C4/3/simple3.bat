@echo off
fpc simple3.pas > NUL
for %%a in (tests\*.a) do (
  simple3.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del simple3.exe