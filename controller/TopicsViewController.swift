//
//  TopicsViewController.swift
//  BlueMorose
//
//  Created by 翁燮羽 on 2021/7/16.
//

import UIKit

class TopicsViewController: UIViewController {
    
    var fraction = 0 //分數
    var quantity = 0 //題目數量
    var taiwaneseTopics = [Topics]()
    var dongTopics = [Topics]()
    //設定taiwaneseTopics要接資料的初始值
    init?(coder:NSCoder,taiwaneseTopics:[Topics]) {
        self.taiwaneseTopics = taiwaneseTopics
        super .init(coder: coder)
    }
    //設定dongTopics接資料
    init?(coder:NSCoder,dongTopics:[Topics]){
        self.dongTopics = dongTopics
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //0題目 1題目數量
    @IBOutlet var topicsLabel: [UILabel]!
        
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        upDataUI() //設定初始畫面的文字顯示內容
        
    }
    
    //0 1 2 3 /分 ＝ 對應相同數字分數
    //董氏31題 台灣人 17
    @IBAction func chooseAnswers(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            fraction+=1
        case 2:
            fraction+=2
        case 3:
            fraction+=3
        default:
            break
        }
        upDataUI()
//        print("分數",fraction)
    }
    // topicsLabel[quantity] = 題目顯示，目前題目為quantity的數量
    //topicsLabel[1] = 題目數量
    func upDataUI(){
        quantity += 1 //題目數量+1
        
        if taiwaneseTopics.isEmpty == false{
            judgeTaiwaneseTopics()
        }else if dongTopics.isEmpty == false{
            judegDongTopics()
        }
       
        
    }
    //判斷台灣人憂鬱症
    func judgeTaiwaneseTopics(){
        if quantity != taiwaneseTopics[0].topic.count{
            //如果題目數量沒有大於總數量才開始
            topicsLabel[0].text = taiwaneseTopics[0].topic[quantity-1]
            topicsLabel[1].text = "\(quantity)/\(taiwaneseTopics[0].topic.count-1)"
        }else if quantity > taiwaneseTopics[0].topic.count-1{ //判斷跳下一頁
            
            quantity = 1 //做好跳下一頁功能刪除
            
            print("跳下一頁")
        }
    }
    //判斷董氏憂鬱量表
    func judegDongTopics(){
        if quantity != dongTopics[0].topic.count{
            topicsLabel[0].text = dongTopics[0].topic[quantity-1]
            topicsLabel[1].text = "\(quantity)/\(dongTopics[0].topic.count-1)"
        }else if quantity > dongTopics[0].topic.count-1{
            
            quantity = 1 //做好跳下一頁功能刪除
            print("跳下一頁")
        }
    }


}

