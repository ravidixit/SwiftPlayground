//
//  CountryCode.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/4/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import Foundation

class CountryCode: CountryCodeProtocol {

    func GetCountryCodes() -> [Result]
    {
        HTTPClient().GetCountryCodes
        {
            (data) -> [Result] in
            return data
        }
        
        return [Result]()
        
    }
    
}
