//
//  dentakuViewController.m
//  dentaku
//
//  Created by 河村　圭亮 on 12/10/16.
//  Copyright (c) 2012年 KeisukeKawamura. All rights reserved.
//

#import "dentakuViewController.h"

@interface dentakuViewController ()

@end

@implementation dentakuViewController

@synthesize model;

@synthesize input, inputdot, output, input2nd, input2nddot, result, dot, digitdot, pushcalculate, calculate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    model=[[dentakuStateMachine alloc]init];
    
    input=0;
    inputdot=0;
    output=0;
    input2nd=0;
    input2nddot=0;
    result=0;
    dot=0;
    digitdot=1;
    
    pushcalculate=0;
    calculate=0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)setTextToX{
    input=[model funcX];
    [[self label]setText:[NSString stringWithFormat:@"%g",input]];
}

- (void)setTextToS{
    output=[model funcS];
    [[self label]setText:[NSString stringWithFormat:@"%g",output]];
}

- (void)setTextToY{
    input2nd=[model funcY];
    [[self label]setText:[NSString stringWithFormat:@"%g",input2nd]];
}




- (IBAction)zero:(id)sender {
    [model zero:sender controller:self];
}

- (IBAction)one:(id)sender {
    [model one:sender controller:self];
}

- (IBAction)two:(id)sender {
    [model two:sender controller:self];
}

- (IBAction)three:(id)sender {
    [model three:sender controller:self];
}

- (IBAction)four:(id)sender {
    [model four:sender controller:self];
}

- (IBAction)five:(id)sender {
    [model five:sender controller:self];
}

- (IBAction)six:(id)sender {
    [model six:sender controller:self];
}

- (IBAction)seven:(id)sender {
    [model seven:sender controller:self];
}

- (IBAction)eight:(id)sender {
    [model eight:sender controller:self];
}

- (IBAction)nine:(id)sender {
    [model nine:sender controller:self];
}

- (void)setTextTo0{
    [[self label]setText:[NSString stringWithFormat:@"%d",0]];
}


- (IBAction)wa:(id)sender {
    [model wa:sender controller:self];
}

- (IBAction)sa:(id)sender {
    [model sa:sender controller:self];
}

- (IBAction)kakeru:(id)sender {
    [model kakeru:sender controller:self];
}

- (IBAction)waru:(id)sender {
    [model waru:sender controller:self];
}

- (IBAction)syosu:(id)sender {
    [model syosu:sender controller:self];
}


- (void)setTextToA{
    result=[model funcA];
    [[self label]setText:[NSString stringWithFormat:@"%g",result]];
}


- (IBAction)kekka:(id)sender {

    [model kekka:sender controller:self];
}

- (IBAction)clear:(id)sender {
    [model clear:sender controller:self];
}

@end
