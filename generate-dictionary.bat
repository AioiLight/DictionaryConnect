set folder=dist\

pushd %0\..

call :generate %folder% msime
call :generate %folder% atok
call :generate %folder% googleime


pause
exit

:generate

call "tool\DictionaryMate" "--input" "data\chara.json" "--output" "%1%2" "--ime" "%2"
move "%1%2\%2.txt" "%1%2\chara.txt"
call "tool\DictionaryMate" "--input" "data\guild.json" "--output" "%1%2" "--ime" "%2"
move "%1%2\%2.txt" "%1%2\guild.txt"

exit /b