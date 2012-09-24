//
//  com_ronx_icouponFirstViewController.h
//  coupon-ws-ios-client
//
//  Created by ronx on 9/23/12.
//  Copyright (c) 2012 RONX Reigns. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CouponListViewController : UIViewController
            <UIPickerViewDataSource, UIPickerViewDelegate>
{
	UILabel *retreiveLabel_;
    NSArray *couponArray_;
}

@property (retain, nonatomic) IBOutlet UILabel *retreiveLabel;


- (IBAction)retreiveButtonAction:(id)sender;



@end
