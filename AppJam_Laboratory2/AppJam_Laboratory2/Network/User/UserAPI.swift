//
//  UserAPI.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/25.
//

import Foundation

import Moya

final class UserAPI: BaseAPI {
    static let shared = UserAPI()
    private var userProvider = MoyaProvider<UserService>(plugins: [MoyaLoggingPlugin()])
    
    public private(set) var signupResponse: GenericResponse<SignupResponseDto>?
    public private(set) var loginResponse: GenericResponse<LoginResponseDto>?
    public private(set) var signUpData: SignupResponseDto?
    public private(set) var loginData: LoginResponseDto?
}

extension UserAPI{
    func signUp(param: SignupRequestDto, completion: @escaping (NetworkResult<Any>) -> Void) {
        userProvider.request(.signUp(param: param)) { (result) in
            switch result {
            case .success(let response):
                let statusCode = response.statusCode
                let data = response.data
                let networkResult = self.judgeStatus(by: statusCode, data, UserDataClass.self)
                completion(networkResult)
            case .failure(let err):
                print(err)
            }
        }
    }
    
    func login(param: LoginRequestDto, completion: @escaping (NetworkResult<Any>) -> Void) {
        userProvider.request(.login(param: param)) { (result) in
            switch result {
            case .success(let response):
                let statusCode = response.statusCode
                let data = response.data
                let networkResult = self.judgeStatus(by: statusCode, data, UserDataClass.self)
                completion(networkResult)
            case .failure(let err):
                print(err)
            }
        }
    }
}



