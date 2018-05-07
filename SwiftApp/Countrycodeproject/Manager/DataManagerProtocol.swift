//
//  DataManagerProtocol.swift
//  Countrycodeproject
//
//  Created by Ravi R Dixit on 5/6/18.
//  Copyright © 2018 Ravi R Dixit. All rights reserved.
//

import Foundation
protocol DataManagerProtocol {
    func GetCountryCodes(request:URLRequest,completion: @escaping (_ result: [Result]) ->())
}
