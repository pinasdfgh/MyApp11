//
//  ViewController.swift
//  MyApp11
//
//  Created by user on 2017/6/29.
//  Copyright © 2017年 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func test2(_ sender: Any) {
        
        let url = URL(string : "http://127.0.0.1/index123.php")
        // 送https request 到　server
        var req = URLRequest(url: url!)
        //不能有空白
        req.httpBody = "account= IOSSS&passwd=IIIOS".data(using: .utf8)
        //可以用GET或POST
        req.httpMethod = "POST"
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: req, completionHandler: {(data,respinse,error) in
            if error == nil{
                let ret = String(data: data!, encoding: .utf8)
                print(ret ?? "Nothing")
            }else{
                print(error!)
            }
        })
        
        task.resume()
        
    }
    @IBAction func Test1(_ sender: Any) {
        
        let url = URL(string:"https://tw.yahoo.com/")
        //ephemeral儲存在記憶體 defaule儲存在硬碟
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: url!, completionHandler: {(data,response,error) in
            if error == nil{
                let ret = String(data: data!, encoding: .utf8)
                print(ret ?? "Nothinh")
            }else{
                print(error!)
            }
        })
        
        task.resume()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

