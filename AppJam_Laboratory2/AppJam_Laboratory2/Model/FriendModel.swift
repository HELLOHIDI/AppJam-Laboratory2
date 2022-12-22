//
//  FriendModel.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/22.
//

import Foundation
import UIKit

struct FriendModel {
    let profileImage: UIImage
    let profileName: String
    let profileMessage: String
    let sendTime: String
}

var friendDummyModel: [FriendModel] = [
    FriendModel(profileImage: Image.friendProfileImage1,
                profileName: "안솝트", profileMessage: "피곤해요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage2,
                profileName: "최솝트", profileMessage: "살려해요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage3,
                profileName: "정솝트", profileMessage: "배고파요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage4,
                profileName: "강솝트", profileMessage: "햄볶아요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage5,
                profileName: "오솝트", profileMessage: "행복해요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage6,
                profileName: "황솝트", profileMessage: "기뻐해요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage7,
                profileName: "최솝트", profileMessage: "공부해요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage8,
                profileName: "고솝트", profileMessage: "슬퍼해요", sendTime: ""),
    FriendModel(profileImage: Image.friendProfileImage9,
                profileName: "하솝트", profileMessage: "조용해요", sendTime: "")
]

var chatDummyModel: [FriendModel] = [
    FriendModel(profileImage: Image.friendProfileImage1,
                profileName: "안솝트", profileMessage: "피곤해요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage2,
                profileName: "최솝트", profileMessage: "살려해요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage3,
                profileName: "정솝트", profileMessage: "배고파요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage4,
                profileName: "강솝트", profileMessage: "햄볶아요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage5,
                profileName: "오솝트", profileMessage: "행복해요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage6,
                profileName: "황솝트", profileMessage: "기뻐해요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage7,
                profileName: "최솝트", profileMessage: "공부해요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage8,
                profileName: "고솝트", profileMessage: "슬퍼해요", sendTime: "오후 9:41"),
    FriendModel(profileImage: Image.friendProfileImage9,
                profileName: "하솝트", profileMessage: "조용해요", sendTime: "오후 9:41")
]



