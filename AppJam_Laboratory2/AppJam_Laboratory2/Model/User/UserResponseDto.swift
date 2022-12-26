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
    let data: DataClass
}

// MARK: - LoginResponseDto

struct LoginResponseDto: Codable {
    let statusCode: Int
    let success: Bool
    let message: String
    let data: DataClass
}

// MARK: - DataClass

struct DataClass: Codable {
    let id: Int
    let emailOrContact: String
}

