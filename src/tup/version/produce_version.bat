echo #include ^"tup/version.h^"
echo|set /p="const char *tup_version(void) {return ""
FOR /F "tokens=* USEBACKQ" %%F IN (`git describe`) DO (
SET var=%%F
)
echo %var%^";}
