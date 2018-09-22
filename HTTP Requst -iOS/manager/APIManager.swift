//
//  APIManager
//  World Cup
//
//  Created by Dulal Hossain on 16/5/18.
//  Copyright © 2018 DL. All rights reserved.
//

import UIKit
import Alamofire


struct API_K {

    static let ProdBaseUrlStr:String = "http://api"
    static let BaseURL = URL(string: ProdBaseUrlStr)!
    
    
    static let SERVER_DOWN_TEXT = "Some things went wrong or server down."

    
    // API Name
    static let SET_LOGIN = "login"
   

    
    

    
    
    // hader Data
    static let API_CLIENT_KEY = ""
  
    
    
    
    



    

}

struct APP_STRING {
        
    static let PROGRESS_TEXT = "Please wait..."
    static let LIVE_SCORE_AVAILABLE = "LIVEAVAILABLE"
    static let DEVICE_TOKEN_UPDATE = "DEVICETOKENUPDATE"
}

class APIManager: NSObject {
    
    /*
     *-------------------------------------------------------
     * MARK:- singletone initialization
     *-------------------------------------------------------
     */
    
    private struct Static {
        static var intance: APIManager? = nil
    }
    
    private static var __once: () = {
        Static.intance = APIManager()
    }()
    
    class var manager: APIManager {
        _ = APIManager.__once
        return Static.intance!
    }
  
    
 }
