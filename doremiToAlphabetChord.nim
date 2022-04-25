import strutils

const alphabetChord = ["A","B","C","D","E","F","G"]

# proc convertToChord(kana: string): string =
#     # "ド" > "C"
#     return alphabetChord.contains(kana)

var kana1: string = "シミレミソファ＃ーレソーミファ＃ソーシーレーラーラーシー"
var kana2: string = "シミレミソファ＃ーファ＃レミーミファ＃ソーシーラーファ＃ーミー"

proc doremiToAlphabetChord(kana: string): string =
    var alphabet = kana
    var cnt = 0
    const alphabetChord = ["A","B","C","D","E","F","G"]
    const kanaChord = ["ラ","シ","ド","レ","ミ","ファ","ソ"]
    for i in kanaChord:
        alphabet = replace(alphabet, i, alphabetChord[cnt])
        cnt += 1
    alphabet = replace(alphabet, "＃", "#")
    alphabet = replace(alphabet, "ー", " ")
    return alphabet

echo kana1.doremiToAlphabetChord()
echo kana2.doremiToAlphabetChord()

# echo alphabetChord
# echo kanaChord
# 
# echo len(alphabetChord)
# echo len(kanaChord)
