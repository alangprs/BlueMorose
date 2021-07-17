//
//  TopicsViewController.swift
//  BlueMorose
//
//  Created by 翁燮羽 on 2021/7/16.
//

import UIKit

class TopicsViewController: UIViewController {

    //0題目 1題目數量
    @IBOutlet var topicsLabel: [UILabel]!
    
    var topics = [Topics]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    //取得、解碼在本地資料的題庫
    func untieData(){
        //因為取得data會有throws 所以要用do，才能知道錯誤的話是什麼問題
        do {
            //取得本地資料位置
             let url = Bundle.main.url(forResource: "憂鬱量表", withExtension: "json")!
                //取得資料
                let data = try Data(contentsOf: url)
                //解析json資料
                 let result = try JSONDecoder().decode([Topics].self, from: data)
            //將解析資料存回
            self.topics = result
            print(result)
            
                
        }catch{
            print("本地資料取得失敗",error)
        }
 
    }

}
