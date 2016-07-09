//
//  AppDelegate.swift
//  Demo
//
//  Created by Marlon on 16/6/24.
//  Copyright © 2016年 test. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    //
    
    
    var window: UIWindow?
    var rootTabBar:TabBarController?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: CGRect(x: 0, y: 0, width: UIWidth, height: UIHeight))
        window?.backgroundColor = UIColor.cyan()
        window?.makeKeyAndVisible()
        
        rootTabBar = TabBarController()
        rootTabBar?.view.backgroundColor = UIColor.white()
        
        window?.rootViewController = rootTabBar
        
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        let fourVC = FourthViewController()
        
        let nav1 = UINavigationController(rootViewController: firstVC)
        let nav2 = UINavigationController(rootViewController: secondVC)
        let nav3 = UINavigationController(rootViewController: thirdVC)
        let nav4 = UINavigationController(rootViewController: fourVC)
        
        rootTabBar?.viewControllers = [nav1,nav2,nav3,nav4]
        rootTabBar?.tabBar.barTintColor = UIColor.cyan()
        //字典
     //   UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(objectsAndKeys: UIColor.whiteColor(),UITextAttributeTextColor,nil), for: UIControlState.selected)
        var titleHighlightedColor: UIColor = UIColor.green()
     //   UITabBarItem.appearance().setTitleTextAttributes(NSDictionary(objectsAndKeys: titleHighlightedColor,UITextAttributeTextColor,nil), for: UIControlState.selected)

       
        
        // 注意此处 必须初始化的时间指定渲染方式 才会生效  其他情况下 不会报错 但是不生效!
      //  UITabBarItem.appearance().setTitleTextAttributes(<#T##attributes: [String : AnyObject]?##[String : AnyObject]?#>, for: <#T##UIControlState#>)
        
        let image11 = UIImage(named: "my-unselected.png")?.withRenderingMode(.alwaysOriginal)
        let image12 = UIImage(named: "my-selected.png")?.withRenderingMode(.alwaysOriginal)
        let tabbarItem01 = UITabBarItem(title: "我的", image: image11, selectedImage:image12)
        
        firstVC.tabBarItem = tabbarItem01
        
        
        
        
        //    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
        //  [UIColor whiteColor], UITextAttributeTextColor,
        //nil] forState:UIControlStateNormal];
        //UIColor *titleHighlightedColor = [UIColor greenColor];
        //[[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
        //titleHighlightedColor, UITextAttributeTextColor,
        //nil] forState:UIControlStateSelected]
        
        // Override point for customization after application launch.
        
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

