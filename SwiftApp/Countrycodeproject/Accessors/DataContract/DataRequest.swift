//
//  DataRequest.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/6/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import Foundation

class DataRequest
{
    static func URLRequestToGetAllCountryCodes()->URLRequest
    {
        return URLRequest(url: URLResources.CountryCodeEndpoint)
    }
}
