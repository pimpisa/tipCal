//
//  ViewController.h
//  tipCal
//
//  Created by Pimpisa Predaswad on 10/31/15.
//  Copyright (c) 2015 Pimpisa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>{

};

@property (strong, nonatomic) IBOutlet UIButton *enterBillButton;
@property (strong, nonatomic) IBOutlet UIImageView *background;
@property (strong, nonatomic) IBOutlet UIButton *showBillButton;
@property (strong, nonatomic) IBOutlet UIButton *eightteenPercent;
@property (strong, nonatomic) IBOutlet UIButton *twentyPercent;
@property (strong, nonatomic) IBOutlet UIButton *thirthyPercent;
@property (strong, nonatomic) IBOutlet UIButton *fifteenPercent;
@property (strong, nonatomic) IBOutlet UITextField *showBillText;


@end

