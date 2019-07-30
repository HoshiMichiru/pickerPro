//
//  ViewController.swift
//  PickerProject
//
//  Created by 星みちる on 2019/07/15.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    
    @IBOutlet weak var pickerView: UIPickerView!
    
    //pickervierで表示するデータの配列を作成
    var fruits = ["banana","cherry","apple","melon","lemon","pair"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //pickerviewに定義した設定を反映させる（おまじない）
        pickerView.dataSource = self
        pickerView.delegate = self
        // Do any additional setup after loading the view.
    }

    //pickerviewの列数を設定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //pickerviewの列数を１列に設定
        return 1
    }
    //pickerviewの行数を設定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //配列fruitsの値の個数を返す
        return fruits.count
    }

    //pickerviewに表示する文字の設定
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //引数:rowには、０始まりの行番号が入ってくる
        return fruits[row]
    }
    
    //pickerViewが選択された時に実行される処理
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //引数rou:選択されたセルの番号
        //選択されたフルーツを出力する
        print(fruits[row])

    }
}

