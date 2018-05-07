//
//  StringResource.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/6/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import Foundation

class StringResource
{
    static var countryCode : String = "http://services.groupkt.com/country/get/all"
}

class URLResources
{
    static var CountryCodeEndpoint : URL = URL(string: StringResource.countryCode)!
}
