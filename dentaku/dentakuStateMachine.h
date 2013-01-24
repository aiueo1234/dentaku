//
//  dentakuStateMachine.h
//  dentaku
//
//  Created by 河村　圭亮 on 13/01/17.
//  Copyright (c) 2013年 KeisukeKawamura. All rights reserved.
//

#import <Foundation/Foundation.h>

@class dentakuViewController;

@interface dentakuStateMachine : NSObject

@property double input,inputdot,output,input2nd,input2nddot,result;
@property int dot,digitdot,pushcalculate,calculate;

- (void)zero:(id)sender controller:(dentakuViewController*)controller;
- (void)one:(id)sender controller:(dentakuViewController*)controller;
- (void)two:(id)sender controller:(dentakuViewController*)controller;
- (void)three:(id)sender controller:(dentakuViewController*)controller;
- (void)four:(id)sender controller:(dentakuViewController*)controller;
- (void)five:(id)sender controller:(dentakuViewController*)controller;
- (void)six:(id)sender controller:(dentakuViewController*)controller;
- (void)seven:(id)sender controller:(dentakuViewController*)controller;
- (void)eight:(id)sender controller:(dentakuViewController*)controller;
- (void)nine:(id)sender controller:(dentakuViewController*)controller;
- (void)syosu:(id)sender controller:(dentakuViewController*)controller;
- (void)kekka:(id)sender controller:(dentakuViewController*)controller;
- (void)wa:(id)sender controller:(dentakuViewController*)controller;
- (void)sa:(id)sender controller:(dentakuViewController*)controller;
- (void)kakeru:(id)sender controller:(dentakuViewController*)controller;
- (void)waru:(id)sender controller:(dentakuViewController*)controller;
- (void)clear:(id)sender controller:(dentakuViewController*)controller;

- (void)Button:(int)number controller:(dentakuViewController*)controller;

- (double)funcX;
- (double)funcS;
- (double)funcY;
- (double)funcA;

@end
