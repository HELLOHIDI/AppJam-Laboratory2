//
//  UserService.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/25.
//

import Foundation

import Moya

enum UserService {
    case signUp(param: SignupRequestDto)
    case login(param: LoginRequestDto)
}

extension UserService: BaseTargetType {
    var path: String {
        switch self {
        case .signUp(param: _):
            return "/v1/signup"
        case .login:
            return "/v1/login"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .signUp(param: _):
            return .post
        case .login(param: _):
            return .post
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .signUp(param: let param):
            return .requestJSONEncodable(param)
        case .login(param: let param):
            return .requestJSONEncodable(param)
        }
    }
}
