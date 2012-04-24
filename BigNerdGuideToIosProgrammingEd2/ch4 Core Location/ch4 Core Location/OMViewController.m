//
//  OMViewController.m
//  ch4 Core Location
//
//  Created by Nick Kaye on 4/23/12.
//  Copyright (c) 2012 Outright Mental. All rights reserved.
//

#import "OMViewController.h"

@interface OMViewController ()

@end

@implementation OMViewController
@synthesize textView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
