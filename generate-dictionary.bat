set folder=dist\

pushd %0\..

call :generate %folder% msime
call :generate %folder% atok
call :generate %folder% googleime


pause
exit

:generate

rem キャラクター
call "tool\DictionaryMate" "--input" "data\chara.json" "--output" "%1%2" "--ime" "%2"
move "%1%2\%2.txt" "%1%2\chara.txt"
rem ギルド名
call "tool\DictionaryMate" "--input" "data\guild.json" "--output" "%1%2" "--ime" "%2"
move "%1%2\%2.txt" "%1%2\guild.txt"
rem 曲
call "tool\DictionaryMate" "--input" "data\song.json" "--output" "%1%2" "--ime" "%2"
move "%1%2\%2.txt" "%1%2\song.txt"
rem その他
call "tool\DictionaryMate" "--input" "data\other.json" "--output" "%1%2" "--ime" "%2"
move "%1%2\%2.txt" "%1%2\other.txt"

exit /b