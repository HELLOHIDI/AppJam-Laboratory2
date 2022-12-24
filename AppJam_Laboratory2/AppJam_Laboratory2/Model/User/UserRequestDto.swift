//
//  UserRequestDto.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/25.
//

import Foundation

// MARK: - SignupRequestDto

struct SignupRequestDto: Codable {
    let emailOrContact: String
    let password: String
    let passwordCheck: String
}

// MARK: - LoginRequestDto

struct LoginRequestDto: Codable {
    let emailOrContact: String
    let password: String
    let passwordCheck: String
}
