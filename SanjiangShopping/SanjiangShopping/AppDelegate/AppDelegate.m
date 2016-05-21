//
//  AppDelegate.m
//  SanjiangShop
//
//  Created by 薛纪杰 on 15/8/24.
//  Copyright (c) 2015年 薛纪杰. All rights reserved.
//

#import "AppDelegate.h"

#import "XSTabBarConteroller.h"

#import <AFNetworking.h>
#import "NetworkConstant.h"

#import "NotificationNameConstant.h"

#import <Bugly/CrashReporter.h>

@interface AppDelegate ()

@property (strong, nonatomic) XSTabBarConteroller *tabBarController;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
     [[CrashReporter sharedInstance] installWithAppId:@"900012628"];
    
    NSURLCache *sharedCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024 diskCapacity:20 * 1024 * 1024 diskPath:nil];
    [NSURLCache setSharedURLCache:sharedCache];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _tabBarController = [[XSTabBarConteroller alloc] init];
    self.window.backgroundColor    = [UIColor whiteColor];
    self.window.rootViewController = _tabBarController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
