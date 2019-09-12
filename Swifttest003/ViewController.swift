//
//  ViewController.swift
//  Swifttest003
//
//  Created by 松尾大雅 on 2019/09/12.
//  Copyright © 2019 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itsulabel:UILabel!
    @IBOutlet var daregalabel:UILabel!
    @IBOutlet var dokodelabel:UILabel!
    @IBOutlet var doushitalabel:UILabel!
    
    let itsuArray:[String] = ["一年前","一週間前","昨日","今日"]
    let dokodeArray:[String] = ["山の上で","アメリカで","学校で","クラスで"]
    let daregaArray:[String] = ["僕が","大統領が","友達が","先生が"]
    let doushitaArray:[String] = ["叫んだ","演説した","怒った","演説した"]
    
    //indexは配列番号とする
    var index : Int = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change(){
        //それぞれのラベルに配列の要素を追加する
        itsulabel.text = itsuArray[index]
        dokodelabel.text = dokodeArray[index]
        daregalabel.text = daregaArray[index]
        doushitalabel.text = doushitaArray[index]
        
        //indexの値を+１する
        index = index + 1
        
        //indexの値が3より大きくなったら0に戻す
        if index > 3 {
            index = 0
        }
        
    }
    
    
    @IBAction func reset(){
        
        //それぞれのラベルを元に戻す
        itsulabel.text = "---"
        dokodelabel.text = "---"
        daregalabel.text = "---"
        doushitalabel.text = "---"
        
        //indexの値を元に戻す
        index = 0
}
    
    
    @IBAction func random(){
        
        //乱数を生成してそれぞれのindexの中に入れる
        let itsuIndex = Int(arc4random_uniform(4))
        let dokodeIndex = Int(arc4random_uniform(4))
        let daregaIndex = Int(arc4random_uniform(4))
        let doushitaIndex = Int(arc4random_uniform(4))
        
        itsulabel.text = itsuArray[itsuIndex]
        dokodelabel.text = dokodeArray[dokodeIndex]
        daregalabel.text = daregaArray[daregaIndex]
        doushitalabel.text = doushitaArray[doushitaIndex]
        
}
    
    
}

