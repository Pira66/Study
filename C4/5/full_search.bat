@echo off
fpc full_search.pas > NUL
for %%a in (tests\*.a) do (
  full_search.exe < tests\%%~na > tests\%%~na.out
  fc /A tests\%%~na.out tests\%%~na.a
  del tests\%%~na.out
)
del full_search.exe