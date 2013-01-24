//
//  dentakuViewController.h
//  dentaku
//
//  Created by 河村　圭亮 on 12/10/16.
//  Copyright (c) 2012年 KeisukeKawamura. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "dentakuStateMachine.h"

@interface dentakuViewController : UIViewController{
}

@property (weak, nonatomic) IBOutlet UILabel *label;

@property dentakuStateMachine* model;


@property double input;
@property double inputdot;
@property double output;
@property double input2nd;
@property double input2nddot;
@property double result;
@property int dot;
@property int digitdot;

@property int pushcalculate;
@property int calculate;

- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)syosu:(id)sender;
- (IBAction)kekka:(id)sender;
- (IBAction)wa:(id)sender;
- (IBAction)sa:(id)sender;
- (IBAction)kakeru:(id)sender;
- (IBAction)waru:(id)sender;
- (IBAction)clear:(id)sender;

- (void)setTextToX;
- (void)setTextToS;
- (void)setTextToY;
- (void)setTextTo0;
- (void)setTextToA;




@end
