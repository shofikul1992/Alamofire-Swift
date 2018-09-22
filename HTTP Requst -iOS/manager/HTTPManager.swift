//
//  HTTPManager
//  World Cup
//
//  Created by Dulal Hossain on 16/5/18.
//  Copyright © 2018 DL. All rights reserved.
//

import UIKit
import Alamofire

enum HTTPError: Error {
    case glossSerializationError
}

public func Request(
    _ method: HTTPMethod,
    _ urlString: String,
    parameters: Parameters? = nil,
    encoding: ParameterEncoding = URLEncoding.default,
    headers: [String: String]? = nil)
    -> DataRequest? {
        guard let fullUrl = URL(string: urlString, relativeTo: API_K.BaseURL) else {
            return nil
        }
        return request(fullUrl, method: method, parameters: parameters, encoding: encoding, headers: headers)
}
