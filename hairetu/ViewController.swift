//
//  ViewController.swift
//  hairetu
//
//  Created by Y,Y on 2015/04/12.
//  Copyright (c) 2015年 Y_Y. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var itu:UILabel!
    @IBOutlet var doko:UILabel!
    @IBOutlet var dare:UILabel!
    @IBOutlet var nani:UILabel!
    
    var ituA:[String] = ["一年前","三年後","今日","おととい","未来世紀","恐竜時代"]
    var dokoA:[String] = ["Japanで","あめぇりかで","ちゅごくで","北極で","腹の上で","LITで"]
    var dareA:[String] = ["俺が","大人が","藻が","マンボウが","おっさんが","ささみが"]
    var naniA:[String] = ["叫んだ","お腹減った","食べた","寝転んだ","みた","だいこん"]
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func change(){
        itu.text = ituA[index]
        doko.text = dokoA[index]
        dare.text = dareA[index]
        nani.text = naniA[index]
        index = index + 1
        if index > 5{
            index=0
        }
    }
    @IBAction func reset(){
        itu.text = "---"
        doko.text = "---"
        dare.text = "---"
        nani.text = "---"
        index = 0
    }
    @IBAction func randam(){
        var ituI = Int(arc4random_uniform(5))
        var dokoI = Int(arc4random_uniform(5))
        var dareI = Int(arc4random_uniform(5))
        var naniI = Int(arc4random_uniform(5))
        NSLog("いつ:%d",ituI)
        NSLog("だれ:%d",dareI)
        NSLog("なに:%d",naniI)
        NSLog("どこ:%d",dokoI)
        itu.text = ituA[ituI]
        doko.text = dokoA[dokoI]
        dare.text = dareA[dareI]
        nani.text = naniA[naniI]
    }


}

