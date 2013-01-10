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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self setState:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

double x=0;
double xx=0;
double s=0;
double y=0;
double yy=0;
double A=0;
int z=0;
int n=1;

int sisoku=0;
int enzan=0;


- (void)Button:(int)number{
    switch(sisoku){
        case 0:
            if(z==0){
                x=x*10+number;
                [[self label]setText:[NSString stringWithFormat:@"%g",x]];
            }
            else{
                xx=number*pow(10,(-n));
                s=x+xx;
                [[self label]setText:[NSString stringWithFormat:@"%g",s]];
                x=s;
                n=n+1;
            }
            break;
            
        case 1:
            if(z==0){
                y=y*10+number;
                [[self label]setText:[NSString stringWithFormat:@"%g",y]];
            }
            else{
                yy=number*pow(10,(-n));
                s=y+yy;
                [[self label]setText:[NSString stringWithFormat:@"%g",s]];
                y=s;
                n=n+1;
            }
            break;
    }
}




- (IBAction)zero:(id)sender {
    [self Button:0];
}

- (IBAction)one:(id)sender {
    [self Button:1];
}

- (IBAction)two:(id)sender {
    [self Button:2];
}

- (IBAction)three:(id)sender {
    [self Button:3];
}

- (IBAction)four:(id)sender {
    [self Button:4];
}

- (IBAction)five:(id)sender {
    [self Button:5];
}

- (IBAction)six:(id)sender {
    [self Button:6];
}

- (IBAction)seven:(id)sender {
    [self Button:7];
}

- (IBAction)eight:(id)sender {
    [self Button:8];
}

- (IBAction)nine:(id)sender {
    [self Button:9];
}



- (IBAction)wa:(id)sender {
    [[self label]setText:[NSString stringWithFormat:@"%d",0]];
    sisoku=1;
    enzan=1;
    s=0;
    z=0;
    n=1;
}

- (IBAction)sa:(id)sender {
    [[self label]setText:[NSString stringWithFormat:@"%d",0]];
    sisoku=1;
    enzan=2;
    s=0;
    z=0;
    n=1;
}

- (IBAction)kakeru:(id)sender {
    [[self label]setText:[NSString stringWithFormat:@"%d",0]];
    sisoku=1;
    enzan=3;
    s=0;
    z=0;
    n=1;
}

- (IBAction)waru:(id)sender {
    [[self label]setText:[NSString stringWithFormat:@"%d",0]];
    sisoku=1;
    enzan=4;
    s=0;
    z=0;
    n=1;
}

- (IBAction)syosu:(id)sender {
    z=1;
}

- (IBAction)kekka:(id)sender {
    switch(enzan){
        case 1:
            A=y+x;
            [[self label]setText:[NSString stringWithFormat:@"%g",A]];
            sisoku=0;
            enzan=0;
            y=0;
            x=A;
            break;
            
        case 2:
            A=x-y;
            [[self label]setText:[NSString stringWithFormat:@"%g",A]];
            sisoku=0;
            enzan=0;
            y=0;
            x=A;
            break;
            
        case 3:
            A=x*y;
            [[self label]setText:[NSString stringWithFormat:@"%g",A]];
            sisoku=0;
            enzan=0;
            y=0;
            x=A;
            break;
            
        case 4:
            A=x/y;
            [[self label]setText:[NSString stringWithFormat:@"%g",A]];
            sisoku=0;
            enzan=0;
            y=0;
            x=A;
            break;
            
    }
}

- (IBAction)clear:(id)sender {
    x=0;
    y=0;
    z=0;
    n=1;
    sisoku=0;
    enzan=0;
    [[self label]setText:[NSString stringWithFormat:@"%d",0]];
}

@end
