//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by YASSER ALTAMIMI on 04/01/1440 AH.
//  Copyright © 1440 YASSER ALTAMIMI. All rights reserved.
//

#import "AppDelegate.h"


@implementation AppDelegate

// for easier navigation
#pragma mark - Application delegate callbacks

// prepare the application before the user start intracting with it
// put all the stuff that need to be ready once the app started
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // create and set the UIwindow instance
    // a CGRect is a struct with and option (x,y) and a size (width,height)
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
    [self setWindow:theWindow];
    
    // define the frame rectangle of the three UI elements
    // CGRectMake() create a CGRect from (x,y,width,height)
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
    CGRect feildFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(288, 40, 72, 31);
    
    // create and setup the UITableView instance
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // tell the tableView which class to init whenever it needs to create a new cell
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    // create and setup the text feild
    self.taskFeild = [[UITextField alloc]initWithFrame:feildFrame];
    self.taskFeild.borderStyle = UITextBorderStyleRoundedRect;
    self.taskFeild.placeholder = @"type a task, tap insert";
    
    // create and setup th button
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    
    // give the button a title
    [self.insertButton setTitle:@"insert" forState:UIControlStateNormal];
    
    // add the three elements to the window
    [self.window addSubview:self.taskTable];
    [self.window addSubview:self.taskFeild];
    [self.window addSubview:self.insertButton];
    
    // finlize the window and put it in the screen
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    return YES;
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
