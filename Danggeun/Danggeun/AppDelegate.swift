//
//  AppDelegate.swift
//  Danggeun
//
//  Created by 윤채영 on 2022/07/14.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var itemList: [String] = [
        "secret이 무슨 뜻인가요?",
        "상여자 특)\n코딩 잘함",
        "17일 새벽에 광명고등학교 앞 cu에서 이x건 씨? 신한카드 주웠어요. 어디 두기도 애매해서 그냥 부숴서 버릴 테니 재발급 잘 받으세요",
        "포켓몬 빵 살 수 있는 편의점이랑 시간 알려 주세요 ㅜㅜ",
        "메이플 월드 구하러 가실 용사님들 모집합니다",
        "탕수육 부으시나요 찍으시나요?\n친구랑 탕수육 먹는데 '부으면 죽여버린다' 라고 하길래 저도 모르게 부어버렸네요.."
    ]


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

