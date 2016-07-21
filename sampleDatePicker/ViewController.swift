//
//  ViewController.swift
//  sampleDatePicker
//
//  Created by Eriko Ichinohe on 2016/07/21.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //初期選択の日付を2016年1月1日に設定
        let df = NSDateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        myDatePicker.date = df.dateFromString("2016/01/01")!
        
        //選択できる最小値を設定
        myDatePicker.minimumDate = df.dateFromString("2014/01/01")

        
        //選択できる最大値を設定
        myDatePicker.maximumDate = df.dateFromString("2016/12/31")

    }

    @IBAction func changeDate(sender: UIDatePicker) {
        
        //日付をどういうフォーマットで変換するか指定
        let df = NSDateFormatter()
        df.dateFormat = "yyyy/MM/dd"
        
        //日付型から文字型に変換してデバッグエリアに表示
        var dateStr = df.stringFromDate(sender.date)
        print(dateStr)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

