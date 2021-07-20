//
//  MelancholicNarrative.swift
//  BlueMorose
//
//  Created by 翁燮羽 on 2021/7/19.
// 憂鬱狀態敘述

import Foundation

//台灣分數 8分以下、9~14、15~18、19~28、29以上
//董氏分數 28以下、29~35、36~51、52以上
enum MelancholicNarrative:String {
    case lv01 = "真令人羨慕!你目前的情緒狀態很穩定，是個懂得適時調整情緒及紓解壓力 的人，繼續保持下去。"
    case lv02 = "最近的情緒是否起伏不定?或是有些事情在困擾著你?給自己多點關心，多 注意情緒的變化，試著了解心情變化的緣由，做適時的處理，比較不會陷入 憂鬱情緒。"
    case lv03 = "你是不是想笑又笑不太出來，有許多事壓在心上，肩上總覺得很沉重?因 為你的壓力負荷量已到了臨界點了，千萬別再「撐」了!趕快找個有相同 經驗的朋友聊聊，心情找個出口，把肩上的重擔放下，這樣才不會陷入憂 鬱症的漩渦!"
    case lv04 = "現在的你必定感到相當不順心，無法展露笑容，一肚子苦惱及煩悶，連朋 友也不知道如何幫你，趕緊找專業機構或心理師協助。透過專業的協助， 必可重拾笑容!"
    case lv05 = "你是不是感到相當的不舒服，會不由自主的沮喪、難過，無法掙脫?因為 心已「感冒」，心病需要心藥醫，趕緊到醫院找專業及可信賴的醫生檢查， 透過他們的診療與治療，你將不再覺得孤單、無助!"
}

