//
//  ViewController.swift
//  MultiProjects
//
//  Created by Edelweiss on 2016/06/02.
//  Copyright © 2016年 Edelweiss. All rights reserved.
//

import UIKit
import Bolts
import MultiProjectsLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var task = BFTask(result: nil)
        
        task = task.continueWithBlock({ (task: BFTask!) -> BFTask! in
            let apiTask = APIUtil.callAPI()
            
            return apiTask
        }).continueWithBlock({ (task: BFTask!) -> BFTask! in
            let result = task.result
            print(result)
            
            return nil
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

