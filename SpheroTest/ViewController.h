//
//  ViewController.h
//  SpheroTest
//
//  Created by Paul Stefan Ort on 1/14/13.
//  Copyright (c) 2013 Paul Stefan Ort. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RobotUIKit/RobotUIKit.h>

@interface ViewController : UIViewController {
    BOOL ledON;
    BOOL robotOnline;
    RUICalibrateGestureHandler *calibrateHandler;
}

-(void)setupRobotConnection;
-(void)handleRobotOnline;
-(void)toggleLED;

@end

