//
//  TopicsViewController.swift
//  BlueMorose
//
//  Created by 翁燮羽 on 2021/7/16.
//

import UIKit

class TopicsViewController: UIViewController {
    
    var viewTopics = [Topics]()
    
    //設定viewTopics要接資料的初始值
    init?(conder:NSCoder,viewTopics:[Topics]) {
        self.viewTopics = viewTopics
        super .init(coder: conder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    //0題目 1題目數量
    @IBOutlet var topicsLabel: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("看第二頁資料",viewTopics)
       
    }
    
    
    
   

}

