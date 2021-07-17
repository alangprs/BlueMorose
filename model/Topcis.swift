//
//  Topcis.swift
//  BlueMorose
//
//  Created by 翁燮羽 on 2021/7/16.


import Foundation

struct Topics:Codable {
    let topicName:String
    let topic:[String]
    
    
    //取得、解碼在本地資料的題庫
   static func untieData(forResource:String,withExtension:String)-> [Topics]?{
        var result = [Topics]()
        //因為取得data會有throws 所以要用do，才能知道錯誤的話是什麼問題
        do {
            //取得本地資料位置
             let url = Bundle.main.url(forResource: forResource, withExtension: withExtension)!
                //取得資料
                let data = try Data(contentsOf: url)
                //解析json資料
                 result = try JSONDecoder().decode([Topics].self, from: data)
        }catch{
            print("本地資料取得失敗",error)
        }
        return result
    }
}




