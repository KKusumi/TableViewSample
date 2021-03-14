//
//  ViewController.swift
//  TableViewSample
//
//  Created by kusumi on 2021/03/14.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let todoList = ["AAA", "BBB", "CCC"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // セルの個数を指定するデリゲートメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count
    }
    
    // セルに値を設定するデータソースメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // idとindexでセルを取得
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // セルに表示する値を設定する
        cell.textLabel!.text = todoList[indexPath.row]
        return cell
    }
}
