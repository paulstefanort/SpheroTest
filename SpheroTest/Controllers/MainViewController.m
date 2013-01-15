//
//  MainViewController.m
//  SpheroTest
//
//  Created by Paul Stefan Ort on 1/14/13.
//  Copyright (c) 2013 Paul Stefan Ort. All rights reserved.
//

#import "MainViewController.h"
#import <RobotKit/RobotKit.h>
#import <QuartzCore/QuartzCore.h>

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) stop {
    [RKRollCommand sendStop];
}

- (void) flashButton:(UIButton *)button {
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [button setBackgroundColor:[UIColor darkGrayColor]];
    [UIView commitAnimations];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    [button setBackgroundColor:[UIColor lightGrayColor]];
    [UIView commitAnimations];
}

- (IBAction)mainButtonPressed:(id)sender {
    [RKRGBLEDOutputCommand sendCommandWithRed:1.0 green:1.0 blue:1.0];
}

- (IBAction)leftButtonPressed:(UIButton *)button {
    [self performSelector:@selector(flashButton:) withObject:button];
    [RKRGBLEDOutputCommand sendCommandWithRed:1.0 green:1.0 blue:0.0];
    [RKRollCommand sendCommandWithHeading:90.0 velocity:0.5];
    [self performSelector:@selector(stop) withObject:nil afterDelay:0.5];
}

- (IBAction)rightButtonPressed:(UIButton *)button {
    [self performSelector:@selector(flashButton:) withObject:button];
    [RKRGBLEDOutputCommand sendCommandWithRed:0.0 green:1.0 blue:0.0];
    [RKRollCommand sendCommandWithHeading:270.0 velocity:0.5];
    [self performSelector:@selector(stop) withObject:nil afterDelay:0.5];
}

- (IBAction)upButtonPressed:(UIButton *)button {
    [self performSelector:@selector(flashButton:) withObject:button];
    [RKRGBLEDOutputCommand sendCommandWithRed:0.0 green:1.0 blue:1.0];
    [RKRollCommand sendCommandWithHeading:0.0 velocity:0.5];
    [self performSelector:@selector(stop) withObject:nil afterDelay:0.5];
}

- (IBAction)downButtonPressed:(UIButton *)button {
    [self performSelector:@selector(flashButton:) withObject:button];
    [RKRGBLEDOutputCommand sendCommandWithRed:1.0 green:0.0 blue:0.0];
    [RKRollCommand sendCommandWithHeading:180.0 velocity:0.5];
    [self performSelector:@selector(stop) withObject:nil afterDelay:0.5];
}


@end
