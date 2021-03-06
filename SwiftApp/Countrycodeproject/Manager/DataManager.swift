//
//  DataManager.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/4/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

//TODO: Add a protocol to this class
import Foundation

class DataManager : DataManagerProtocol
{
    func GetCountryCodes(request:URLRequest,completion: @escaping (_ result: [Result]) ->())
    {
        URLSession.shared.dataTask(with: request) { (data, response, error) in
           
            guard let responseData = data else { return }
            do
            {
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
