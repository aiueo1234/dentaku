//
//  dentakuStateMachine.m
//  dentaku
//
//  Created by 河村　圭亮 on 13/01/17.
//  Copyright (c) 2013年 KeisukeKawamura. All rights reserved.
//

#import "dentakuStateMachine.h"
#import "dentakuViewController.h"

@implementation dentakuStateMachine

double input=0;
double inputdot=0;
double output=0;
double input2nd=0;
double input2nddot=0;
double result=0;
int dot=0;
int digitdot=1;

int pushcalculate=0;
int calculate=0;



- (void)Button:(int)number controller:(dentakuViewController*)controller
{
    switch(pushcalculate){
        case 0:
            if(dot==0){
                input=input*10+number;
                [controller setTextToX];
            }
            else{
                inputdot=number*pow(10,(-digitdot));
                output=input+inputdot;
                [controller setTextToS];
                input=output;
                digitdot=digitdot+1;
            }
            break;
            
        case 1:
            if(dot==0){
                input2nd=input2nd*10+number;
                [controller setTextToY];
            }
            else{
                input2nddot=number*pow(10,(-digitdot));
                output=input2nd+input2nddot;
                [controller setTextToS];
                input2nd=output;
                digitdot=digitdot+1;
            }
            break;
    }
}




- (void)zero:(id)sender controller:(dentakuViewController*)controller{
    [self Button:0 controller:(dentakuViewController*)controller];
}

- (void)one:(id)sender controller:(dentakuViewController*)controller{
    [self Button:1 controller:(dentakuViewController*)controller];
}

- (void)two:(id)sender controller:(dentakuViewController*)controller{
    [self Button:2 controller:(dentakuViewController*)controller];
}

- (void)three:(id)sender controller:(dentakuViewController*)controller{
    [self Button:3 controller:(dentakuViewController*)controller];
}

- (void)four:(id)sender controller:(dentakuViewController*)controller{
    [self Button:4 controller:(dentakuViewController*)controller];
}

- (void)five:(id)sender controller:(dentakuViewController*)controller{
    [self Button:5 controller:(dentakuViewController*)controller];
}

- (void)six:(id)sender controller:(dentakuViewController*)controller
{
    [self Button:6 controller:(dentakuViewController*)controller];
}

- (void)seven:(id)sender controller:(dentakuViewController*)controller{
    [self Button:7 controller:(dentakuViewController*)controller];
}

- (void)eight:(id)sender controller:(dentakuViewController*)controller{
    [self Button:8 controller:(dentakuViewController*)controller];
}

- (void)nine:(id)sender controller:(dentakuViewController*)controller{
    [self Button:9 controller:(dentakuViewController*)controller];
}

- (void)wa:(id)sender controller:(dentakuViewController*)controller{
    [controller setTextTo0];
    pushcalculate=1;
    calculate=1;
    output=0;
    dot=0;
    digitdot=1;
}

- (void)sa:(id)sender controller:(dentakuViewController*)controller{
    [controller setTextTo0];
    pushcalculate=1;
    calculate=2;
    output=0;
    dot=0;
    digitdot=1;
}

- (void)kakeru:(id)sender controller:(dentakuViewController*)controller{
    [controller setTextTo0];
    pushcalculate=1;
    calculate=3;
    output=0;
    dot=0;
    digitdot=1;
}

- (void)waru:(id)sender controller:(dentakuViewController*)controller{
    [controller setTextTo0];
    pushcalculate=1;
    calculate=4;
    output=0;
    dot=0;
    digitdot=1;
}

- (void)syosu:(id)sender controller:(dentakuViewController*)controller{
    dot=1;
}

- (void)kekka:(id)sender controller:(dentakuViewController*)controller{
    switch(calculate){
        case 1:
            result=input2nd+input;
            [controller setTextToA];
            pushcalculate=0;
            calculate=0;
            input2nd=0;
            input=result;
            break;
            
        case 2:
            result=input-input2nd;
            [controller setTextToA];
            pushcalculate=0;
            calculate=0;
            input2nd=0;
            input=result;
            break;
            
        case 3:
            result=input*input2nd;
            [controller setTextToA];
            pushcalculate=0;
            calculate=0;
            input2nd=0;
            input=result;
            break;
            
        case 4:
            result=input/input2nd;
            [controller setTextToA];
            pushcalculate=0;
            calculate=0;
            input2nd=0;
            input=result;
            break;
            
    }
}

- (void)clear:(id)sender controller:(dentakuViewController*)controller{
    input=0;
    input2nd=0;
    dot=0;
    digitdot=1;
    pushcalculate=0;
    calculate=0;
    [controller setTextTo0];
}


- (double)funcX
{
    return input;
}

- (double)funcS
{
    return output;
}

- (double)funcY
{
    return input2nd;
}

- (double)funcA
{
    return result;
}

@end
