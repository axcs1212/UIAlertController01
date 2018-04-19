//
//  ViewController.swift
//  UIAlertController01
//
//  Created by D7703_23 on 2018. 4. 19..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let myAlertController = UIAlertController(title: "알람", message: "설정된 시간이 되었습니다.", preferredStyle: UIAlertControllerStyle.alert)
        
        //AlertAction 만들기
        let okAction = UIAlertAction(title: "확인", style: UIAlertActionStyle.default, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
        
        //AlertAction을 UIAlertController에 넣기
        myAlertController.addAction(okAction)
        
        //화면에 출력
        present(myAlertController, animated: true, completion: nil)
    }
    
}

