//
//  HomeViewController.swift
//  BlueMorose
//
//  Created by 翁燮羽 on 2021/7/15.
//

import UIKit

class HomeViewController: UIViewController {
    
    var TaiwaneseTopics = [Topics]() //存台灣人憂鬱量表題目
    var dongTopics = [Topics]() //存董氏憂鬱量表題目
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //前往測試題目按鈕 tag ->0台灣人憂鬱量表 1董氏憂鬱量表
    @IBAction func goTest(_ sender: UIButton) {
        if sender.tag == 0{
            //解析選到的資料，存到相對應的題目array裏面
            if let data = Topics.untieData(forResource: "台灣人憂鬱量表", withExtension: "json"){
                self.TaiwaneseTopics = data
            }
        }else{
            if let data = Topics.untieData(forResource: "董氏憂鬱量表", withExtension: "json"){
                self.dongTopics = data
            }
        }
    }
    
    //台灣人憂鬱量表資料傳到第二頁
    @IBSegueAction func showTaiwanTopic(_ coder: NSCoder) -> TopicsViewController? {
        return TopicsViewController(coder: coder, taiwaneseTopics: TaiwaneseTopics)
    }
    
    //董氏憂鬱量表 傳資料到第二頁
    @IBSegueAction func showDongTopic(_ coder: NSCoder) -> TopicsViewController? {
        return TopicsViewController(coder: coder, dongTopics: dongTopics)
    }
    
    
    //讓顯示答案那頁回來
    @IBAction func unwindToShowFractionController(_ unwindSegue: UIStoryboardSegue) {
        
    }
    
}
