set folder=dist\

pushd %0\..

call :generate %folder% msime
call :generate %folder% atok
call :generate %folder% googleime


pause
exit

:generate

call "tool\DictionaryMate" "--input" "data\chara.json" "--output" "%1%2\chara.txt" "--ime" "%2"
call "tool\DictionaryMate" "--input" "data\guild.json" "--output" "%1%2\guild.txt" "--ime" "%2"

exit /b