//
//  AppDelegate.m
//  NotificationTest
//
//  Created by Serhii Lukashchuk on 2023-11-22.
//

#import "AppDelegate.h"
#import "SLGovernment.h"

@interface AppDelegate ()
@property (strong, nonatomic) SLGovernment* government;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSNotificationCenter* nCenter = [NSNotificationCenter defaultCenter];
    
    self.government = [[SLGovernment alloc] init];
    
    self.government.taxLevel = 5.5;
    self.government.salary = 1100;
    self.government.averagePrice = 15;
    self.government.pension = 550;
    
    NSLog(@"%@", SLGovernmentTaxLeveDidChangeNotification);
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
