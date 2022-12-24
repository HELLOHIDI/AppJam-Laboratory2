//
//  BaseTargetType.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/25.
//

import Foundation
import Moya

protocol BaseTargetType: TargetType{ }

extension BaseTargetType{
    var baseURL: URL{
        return URL(string: "http://3.34.53.11:8080")!
    }
    
    var headers: [String : String]?{
        return APIEnvironment.noTokenHeader
    }
    
}
