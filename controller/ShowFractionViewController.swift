//
//  ShowFractionViewController.swift
//  BlueMorose
//
//  Created by 翁燮羽 on 2021/7/18.
//

import UIKit

class ShowFractionViewController: UIViewController {
    
    //接topicsViewController的內容
    var fraction = 0 //分數
    var quantity = 0 //題目數量
    init?(coder:NSCoder,fraction:Int,quantity:Int) {
        self.fraction = fraction
        self.quantity = quantity
        super .init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //0分數 1結果文字
    @IBOutlet var showFractionLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showFractionLabels[0].text = "\(fraction)"
        //判斷題目數量決定使用哪個分數來評斷
        if quantity == 17{
            TaiwanNarrative()
        }else{
            dongTopicsNarrative()
        }
    }
    //台灣分數 8分以下、9~14、15~18、19~28、29以上
    func TaiwanNarrative(){
        switch fraction {
        case 0...8:
            showFractionLabels[1].text = MelancholicNarrative.lv01.rawValue
        case 9...14:
            showFractionLabels[1].text = MelancholicNarrative.lv02.rawValue
        case 15...18:
            showFractionLabels[1].text = MelancholicNarrative.lv03.rawValue
        case 19...28:
            showFractionLabels[1].text = MelancholicNarrative.lv04.rawValue
        default:
            showFractionLabels[1].text = MelancholicNarrative.lv05.rawValue
        }
    }
    //董氏分數 28以下、29~35、36~51、52以上
    func dongTopicsNarrative(){
        switch fraction {
        case 0...28:
            showFractionLabels[1].text = MelancholicNarrative.lv01.rawValue
        case 29...35:
            showFractionLabels[1].text = MelancholicNarrative.lv02.rawValue
        case 36...51:
            showFractionLabels[1].text = MelancholicNarrative.lv04.rawValue
        default:
            showFractionLabels[1].text = MelancholicNarrative.lv05.rawValue
        }
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
