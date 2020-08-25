//
//  ViewController.swift
//  TechPod
//
//  Created by Erepyon on 2020/02/04.
//  Copyright © 2020 Erepyon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    //StoryBoardで扱うTableViewを宣言
    @IBOutlet var table: UITableView!
    
    //曲名を入れるために配列
    var songNameArray = [String]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //テーブルビューのデータソースメソッドはViewControllクラスに書くよ、という設定
        table.dataSource = self
        
        //songNameArrayに曲名を入れていく
        
        songNameArray = ["カノン", "エリーゼのために", "G線上のアリア"]
        
    }
    
  
    //セルの数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       //セルの数をsongNameArrayの数にする
        return songNameArray.count
    }
    
    
    
    //ID付きのセルを取得して、　セル付属のtextLabelに「テスト」と表示させてみる
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "Cell")
        //セルにsongNameArrayの曲名を表示する
        cell?.textLabel?.text = songNameArray[indexPath.row]
        
        return cell!
    }
    
    //セルが押された時に呼ばれるメソッド
//    func tableView(_ tableView: UITableView, didSelect) {
//        return
//    }



}

