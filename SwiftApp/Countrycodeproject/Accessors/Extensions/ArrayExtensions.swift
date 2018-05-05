//
//  ArrayExtensions.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/5/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import Foundation

extension NSArray
{
    func ToResultType() -> [Result] {
        
        var resultArray = [Result]()
        for items in self
        {
            let res = Result()
            if let myDictionary = items as? [String : AnyObject]
            {
                res.name = myDictionary["name"] as? String
                res.alpha2_code = myDictionary["alpha2_code"] as? String
                res.alpha3_code = myDictionary["alpha3_code"] as? String
            }
            
            resultArray.append(res);
        }
        return resultArray
        
    }
}
