//
//  HTTPClient.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/4/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import Foundation
import UIKit

class HTTPClient {

    func GetCountryCodes(completion: @escaping (_ result: [Result]) -> [Result])
    {
        let urlString = "http://services.groupkt.com/country/get/all"
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!)
        { (data, response, error) in
            
            guard let responseData = data else { return }
            do {
                
                let parsedData = try JSONSerialization.jsonObject(with: responseData) as! [String:Any]
                let resultSet = (parsedData["RestResponse"] as! [String:Any])["result"] as! NSArray
                _=completion(resultSet.ToResultType())
            }
                
            catch let jsonError
            {
                print(jsonError)
            }
            
            }.resume()
    }
    
}
