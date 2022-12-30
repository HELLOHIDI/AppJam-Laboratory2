//
//  UserResponseDto.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/25.
//

import Foundation

// MARK: - SignupResponseDto

struct SignupResponseDto: Codable {
    let statusCode: Int
    let success: Bool
    let message: String
    let data: UserDataClass
}

// MARK: - LoginResponseDto

struct LoginResponseDto: Codable {
    let statusCode: Int
    let success: Bool
    let message: String
    let data: UserDataClass
}

// MARK: - DataClass

struct UserDataClass: Codable {
    let id: Int
    let emailOrContact: String
}

