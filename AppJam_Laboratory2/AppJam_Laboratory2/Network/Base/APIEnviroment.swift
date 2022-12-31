//
//  APIEnviroment.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/25.
//

import Foundation
import Moya

struct APIEnvironment{
    static let noTokenHeader = ["Content-Type": "application/json"]
    static let hasTokenHeader = ["Content-Type": "application/json"]
    //,"Authorization": Secret.accessToken]
}
