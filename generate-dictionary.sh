folder="dist"

function generate() {
  # プレイアブルキャラクター
  ./tool/linux/DictionaryMate --input ./data/playable.json --output ./${folder}/${1} --ime ${1}
  mv ./${folder}/${1}/${1}.txt ./${folder}/${1}/playable.txt
  
  # ギルド名
  ./tool/linux/DictionaryMate --input ./data/guild.json --output ./${folder}/${1} --ime ${1}
  mv ./${folder}/${1}/${1}.txt ./${folder}/${1}/guild.txt
  
  # 曲
  ./tool/linux/DictionaryMate --input ./data/song.json --output ./${folder}/${1} --ime ${1}
  mv ./${folder}/${1}/${1}.txt ./${folder}/${1}/song.txt
  
  # イベント
  ./tool/linux/DictionaryMate --input ./data/event.json --output ./${folder}/${1} --ime ${1}
  mv ./${folder}/${1}/${1}.txt ./${folder}/${1}/event.txt
  
  # その他
  ./tool/linux/DictionaryMate --input ./data/other.json --output ./${folder}/${1} --ime ${1}
  mv ./${folder}/${1}/${1}.txt ./${folder}/${1}/other.txt
}

mkdir ${folder}

generate atok
generate googleime
