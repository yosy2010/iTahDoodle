//
//  ViewController.h
//  iTahDoodle
//
//  Created by YASSER ALTAMIMI on 04/01/1440 AH.
//  Copyright © 1440 YASSER ALTAMIMI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;
- (void)addTask:(id)sender;

@end

