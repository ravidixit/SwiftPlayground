//
//  ViewController.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/4/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtCountryCodeFiled: UITextField!
    
    let _manager = DataManager();
    var _resultSet = [Result]();
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Get country record
        
        _manager.GetCountryCodes(request:
        DataRequest.URLRequestToGetAllCountryCodes())
        { (data) in
            self._resultSet = data
        }
        
       //Do things with your data here
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

