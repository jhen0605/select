//
//  ViewController.swift
//  select
//
//  Created by 簡吟真 on 2021/5/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField! //姓名輸入框
    @IBOutlet weak var gender: UISegmentedControl! //性別
   
    //slider
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var cmSlider: UISlider!
    @IBOutlet weak var kgSlider: UISlider!
    
    @IBOutlet weak var bloodType: UISegmentedControl! //血型
    @IBOutlet weak var sendButton: UIButton! //發送鍵
    
    //Label
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var cmLabel: UILabel!
    @IBOutlet weak var kgLabel: UILabel!
    
    @IBOutlet weak var okImage: UIImageView!
    
    //讓數值跟著 slider 動
    @IBAction func ageLabelClick(_ sender: Any) {
        ageLabel.text = String(format: "%.0f", ageSlider.value)
    }
    @IBAction func cmLabelClick(_ sender: Any) {
        cmLabel.text = String(format: "%.0f", cmSlider.value)
    }
    @IBAction func kgLabelClick(_ sender: Any) {
        kgLabel.text = String(format: "%.0f", kgSlider.value)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //sliderImage
       ageSlider.setThumbImage(UIImage(named: "1"), for: .normal)
       cmSlider.setThumbImage(UIImage(named: "2"), for: .normal)
       kgSlider.setThumbImage(UIImage(named: "3"), for: .normal)
        
    }


    @IBAction func changeButton(_ sender: UIButton) {
        okImage.isHidden = false
        if name.text == "" {
            okImage.image = UIImage(named: "no")//空字串不能用nil
        } else {
            okImage.image = UIImage(named: "ok")
            
    //輸入正確 姓名欄 將會重置
            name.text = ""
            
            
    //輸入正確 性別、血型 將會重置
            gender.selectedSegmentIndex = 0
            bloodType.selectedSegmentIndex = 0
        
    //輸入正確 slider值 將會重置
        ageSlider.value = 0
        ageLabel.text = String(0)
        
        cmSlider.value = 0
        cmLabel.text = String(1)
        
        kgSlider.value = 0
        kgLabel.text = String(1)
      }
    
    }
    
}
