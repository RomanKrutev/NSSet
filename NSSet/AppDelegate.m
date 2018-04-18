//
//  AppDelegate.m
//  NSSet
//
//  Created by Роман on 18.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
    
    
    //Create NSArray, containing 30 objects. Add duplicates to array
    NSArray* array3 =[[NSArray alloc]initWithObjects:@"string1",@"string2",@"string3",@"string4",@"string5",@"string6",@"string7",@"string8",@"string9",
                      @"string10",@"string11",@"string12",@"string13",@"string14",@"string3",@"string16",@"string12",@"string18",@"string19",@"string20",@"string21",@"string22",@"string18",
                      @"string24",@"string25",@"string26",@"string27",@"string28",@"string29",@"string20",nil];
    // Use NSSet to exclude duplicates from array
    NSSet* set1 =[NSSet setWithArray:array3];
    NSLog(@"%@",set1);
    //Check what is faster
    //Create an array of 100 numbers. Check whether number 74 is contained inside an array
    NSMutableArray* arrayWithNumbers = [[NSMutableArray alloc]init];
    for (int a =0; a <100; ++a) {
        [arrayWithNumbers addObject:[NSNumber numberWithInteger:arc4random_uniform(100)]];
    }
    NSLog(@"%@",arrayWithNumbers);
    
    double createTime1 = CACurrentMediaTime();
    NSLog(@"time index is %lu, search time: %f",
          (unsigned long)[arrayWithNumbers indexOfObject:[NSNumber numberWithInteger:74]],CACurrentMediaTime() - createTime1);
    
    
    
    NSSet* set2 = [[NSSet setWithArray:arrayWithNumbers]copy];
    double createTime2 = CACurrentMediaTime();
    NSLog(@"Is object %lu exist in set2? Search time: %f",
          (unsigned long)[set2 containsObject:[NSNumber numberWithInteger:74]],CACurrentMediaTime() - createTime2);

}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
