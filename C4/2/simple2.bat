@echo off
fpc simple2.pas > NUL
for %%a in (tests\*.a) do (
  simple2.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del simple2.exe