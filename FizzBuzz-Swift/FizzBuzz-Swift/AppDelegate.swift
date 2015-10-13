//
//  AppDelegate.swift
//  FizzBuzz-Swift
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        for i in 1...100 {
            if (i % 3 == 0) && (i % 5 == 0) {
                print("FizzBuzz")
            } else if (i % 3 == 0) {
                print("Fizz")
            } else if (i % 5 == 0) {
                print("Buzz")
            } else {
                print(i)
            }
        }
        
        return true
    }
 }

