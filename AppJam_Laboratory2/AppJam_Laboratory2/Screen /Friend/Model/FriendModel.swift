//
//  FriendModel.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/22.
//

import Foundation

struct FriendModel {
    let profileImage: String?
    let profileName: String?
    let profileMessage: String?
}

var friendDummyModel: [FriendModel] = [
    FriendModel(profileImage: "friend_profile1", profileName: "안솝트", profileMessage: "피곤해요"),
    FriendModel(profileImage: "friend_profile2", profileName: "최솝트", profileMessage: "살려해요"),
    FriendModel(profileImage: "friend_profile3", profileName: "정솝트", profileMessage: "배고파요"),
    FriendModel(profileImage: "friend_profile4", profileName: "강솝트", profileMessage: "햄볶아요"),
    FriendModel(profileImage: "friend_profile5", profileName: "오솝트", profileMessage: "행복해요"),
    FriendModel(profileImage: "friend_profile6", profileName: "황솝트", profileMessage: "기뻐해요"),
    FriendModel(profileImage: "friend_profile7", profileName: "최솝트", profileMessage: "공부해요"),
    FriendModel(profileImage: "friend_profile8", profileName: "고솝트", profileMessage: "슬퍼해요"),
    FriendModel(profileImage: "friend_profile9", profileName: "하솝트", profileMessage: "조용해요")
]
