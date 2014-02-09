//
//  ViewController.m
//  Calculator
//
//  Created by Shivek Khurana on 21/01/14.
//  Copyright (c) 2014 Shivek Khurana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)Number1:(id)sender{
    SelectNumber = SelectNumber*10 + 1;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number2:(id)sender{
    SelectNumber = SelectNumber*10 + 2;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number3:(id)sender{
    SelectNumber = SelectNumber*10 + 3;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number4:(id)sender{
    SelectNumber = SelectNumber*10 + 4;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number5:(id)sender{
    SelectNumber = SelectNumber*10 + 5;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number6:(id)sender{
    SelectNumber = SelectNumber*10 + 6;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number7:(id)sender{
    SelectNumber = SelectNumber*10 + 7;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number8:(id)sender{
    SelectNumber = SelectNumber*10 + 8;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number9:(id)sender{
    SelectNumber = SelectNumber*10 + 9;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Number0:(id)sender{
    SelectNumber = SelectNumber*10;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}

-(IBAction)Times:(id)sender{
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal*SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal/SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    Method = 1;
    SelectNumber = 0;
}


-(IBAction)Divide:(id)sender{
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal*SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal/SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    Method = 2;
    SelectNumber = 0;

}

-(IBAction)Subtract:(id)sender{
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal*SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal/SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    Method = 3;
    SelectNumber = 0;
}

-(IBAction)Plus:(id)sender{
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal*SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal/SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    Method = 4;
    SelectNumber = 0;
}

-(IBAction)Equals:(id)sender{
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal*SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal/SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    Method = 0;
    SelectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"%.2f", RunningTotal];
}

-(IBAction)AllClear:(id)sender{
    
    Method = 0;
    RunningTotal = 0;
    SelectNumber = 0;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}



@end
