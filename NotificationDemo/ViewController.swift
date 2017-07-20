//
//  ViewController.swift
//  NotificationDemo
//
//  Created by Peter Pan on 8/15/16.
//  Copyright © 2016 Peter Pan. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBAction func createNotification(_ sender: AnyObject) {
        //UNMutableNotificationContent
        let content = UNMutableNotificationContent()
        content.title = "我是標題"
        content.subtitle = "我是副標題"
        content.body = "我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容我是內容"
        content.badge = 1
        content.sound = UNNotificationSound.default()
        //UNTimeIntervalNotificationTrigger: 幾秒鐘後觸發。
        
        //UNCalendarNotificationTrigger: 指定某個時刻觸發。
        //UNLocationNotificationTrigger: 使用者靠近某個位置時觸發。
        //UNPushNotificationTrigger: 從千里之外的後台傳送到使用者手機的通知。
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
    
        let request = UNNotificationRequest(identifier: "notification1", content: content, trigger: trigger)
       // 一個 App 可能有多種本地通知，它們之間是通過 Identifier 進行區分的。
        
        UNUserNotificationCenter.current().add(request,withCompletionHandler: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

