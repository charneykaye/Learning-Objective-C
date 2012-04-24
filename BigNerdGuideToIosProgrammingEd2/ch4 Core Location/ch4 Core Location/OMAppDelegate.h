//
//  OMAppDelegate.h
//  ch4 Core Location
//
//  Created by Nick Kaye on 4/23/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@class OMViewController;

@interface OMAppDelegate : UIResponder <UIApplicationDelegate> {
    CLLocationManager *locationManager;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) OMViewController *viewController;

@end
