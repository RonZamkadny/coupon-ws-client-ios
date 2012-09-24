//
//  com_ronx_icouponFirstViewController.m
//  coupon-ws-ios-client
//
//  Created by ronx on 9/23/12.
//  Copyright (c) 2012 RONX Reigns. All rights reserved.
//

#import "CouponListViewController.h"

@interface CouponListViewController ()
@end

@implementation CouponListViewController

@synthesize retreiveLabel = retreiveLabel_;

- (void)viewDidLoad
{
    [super viewDidLoad];

    couponArray_ = [[NSArray alloc] initWithObjects:
                    @"TEST COUPON 0",
                    @"TEST COUPON 1",
                    @"TEST COUPON 2",
                    @"TEST COUPON 3",
                    @"TEST COUPON 4",
                    @"TEST COUPON 5",
                    @"TEST COUPON 6",
                    @"TEST COUPON 7", nil];
}

- (void)viewDidUnload
{
    [self setRetreiveLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:
    (UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)retreiveButtonAction:
    (id)sender
{
        retreiveLabel_.text = @"Retreiving...";
}

#pragma mark -
#pragma mark Picker Datasource Protocol

- (NSInteger)pickerView:
    (UIPickerView *)pickerView numberOfRowsInComponent:
    (NSInteger)component
{
    return [couponArray_ count];
}

- (NSInteger)numberOfComponentsInPickerView:
    (UIPickerView *)pickerView
{
    return 1;
}

#pragma mark -
#pragma mark Picker Delegate Protocol

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [couponArray_ objectAtIndex:row];
}

@end
