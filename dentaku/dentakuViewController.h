//
//  dentakuViewController.h
//  dentaku
//
//  Created by 河村　圭亮 on 12/10/16.
//  Copyright (c) 2012年 KeisukeKawamura. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface dentakuViewController : UIViewController{
}

@property enum {dentaku} state;

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

@property (weak, nonatomic) IBOutlet UILabel *label;


@end
