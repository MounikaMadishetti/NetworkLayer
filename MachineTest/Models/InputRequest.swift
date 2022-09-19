//
//  InputRequest.swift
//  MachineTest
//
//  Created by Mounika Madishetti on 27/08/21.
//

import Foundation
struct InputRequest: APIData {
    var path: String
    
    var method: HTTPMethod
    
    var parameters: RequestParams
    
    var headers: [String : String]?
    
    var dataType: ResponseDataType
    
    
}
