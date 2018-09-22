//
//  ViewController.swift
//  HTTP Requst -iOS
//
//  Created by Admin on 23/9/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        webRequestForLoginAPI(username:"IM2018",password:"IMRANkhan123456")
    }
    
    
    func webRequestForLoginAPI(username : String,password:String)   {
        
        let params:[String:String] = ["username":username,"password":password]
        
        
        let headrs:[String:String] = [API_K.API_CLIENT_KEY: API_K.API_CLIENT_VALUE, API_K.AUTH_TOKEN_KEY: API_K.AUTH_TOKEN_VALUE]
        
        
        Request(.post, API_K.SET_LOGIN, parameters: params, headers: headrs)?.responseJSON(completionHandler: { (responseData) in
            switch responseData.result {
            
            
            case .success(let value):
                
                print(value)
                
            case .failure(let error):
                
                
                print(error)
                break
                
                //
                
                
                
            }
        })
        
    }
    
    




}

