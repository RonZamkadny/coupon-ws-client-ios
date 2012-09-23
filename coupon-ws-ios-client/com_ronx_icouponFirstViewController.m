//
//  com_ronx_icouponFirstViewController.m
//  coupon-ws-ios-client
//
//  Created by ronx on 9/23/12.
//  Copyright (c) 2012 RONX Reigns. All rights reserved.
//

#import "com_ronx_icouponFirstViewController.h"

@interface com_ronx_icouponFirstViewController ()

@end

@implementation com_ronx_icouponFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
