//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by YASSER ALTAMIMI on 04/01/1440 AH.
//  Copyright © 1440 YASSER ALTAMIMI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

// properties
@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable; // to show the task to be done
@property (nonatomic) UITextField *taskFeild; // to enter new tasks
@property (nonatomic) UIButton *insertButton; // to add the task to the table

@property (nonatomic) NSMutableArray *tasks; // array of strings to hold the tasks as strings

// methods
- (void)addTask: (id) sender; // the method that add the task to the array of strings

@end

