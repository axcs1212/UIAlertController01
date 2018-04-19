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
        let myAlertController = UIAlertController(title: "알람", message: "설정된 시간이 되었습니다.", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        
        
        //AlertAction 만들기
        let okAction = UIAlertAction(title: "확인", style: .default){
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {
            (myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        })
        
        let testAction = UIAlertAction(title: "테스트", style: .destructive, handler: nil)
        
        //AlertAction을 UIAlertController에 넣기
        myAlertController.addAction(okAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(testAction)
        
        //화면에 출력
        present(myAlertController, animated: true, completion: nil)
    }
    
}

