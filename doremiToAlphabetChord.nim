import os
import strutils

const alphabetChord = ["A","B","C","D","E","F","G"]
const kanaChord = ["ラ","シ","ド","レ","ミ","ファ","ソ"]

proc doremiToAlphabetChord(kana: string): string =
    var alphabet = kana
    var cnt = 0
    for i in kanaChord:
        alphabet = replace(alphabet, i, alphabetChord[cnt])
        cnt += 1
    alphabet = replace(alphabet, "＃", "#")
    alphabet = replace(alphabet, "ー", " ")
    return alphabet

# var kana1: string = "ドレミファソラシド"
var kana1: string = os.commandLineParams()[0]
echo kana1.doremiToAlphabetChord()