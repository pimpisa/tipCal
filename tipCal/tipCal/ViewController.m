//
//  ViewController.m
//  tipCal
//
//  Created by Pimpisa Predaswad on 10/31/15.
//  Copyright (c) 2015 Pimpisa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
NSString *bill;
float billToFloat;

- (void)viewDidLoad {
    [super viewDidLoad];
    _showBillButton.hidden = YES;
    _showBillText.hidden = YES;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)enterBill:(id)sender {
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Your Bill Amount" message:@"Please enter your bill:" delegate:self cancelButtonTitle:@"Done" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField * alertTextField = [alert textFieldAtIndex:0];
    alertTextField.keyboardType = UIKeyboardTypeNumberPad;
    alertTextField.placeholder = @"Enter your bill";
    [alert show];
    _showBillText.hidden = NO;
    bill = [alert textFieldAtIndex:0].text;
    billToFloat = [bill floatValue];
    NSLog(@"You entered %@",bill);
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    _showBillText = [alertView textFieldAtIndex:0];
    _showBillText.hidden = NO;
    NSString *title = _showBillText.text;
    NSLog(@"The name is %@",title);
    NSLog(@"Using the Textfield: %@",[[alertView textFieldAtIndex:0] text]);

}


- (IBAction)fifteenPercentCal:(id)sender {
    float tipTotal = ((billToFloat * 15) / 100);
    NSString *buttonTitle = [[NSNumber numberWithFloat:tipTotal] stringValue];
    [(UIButton *)sender setTitle:buttonTitle  forState:UIControlEventTouchUpInside];
}


- (IBAction)eighteenPercentCal:(id)sender {
    float tipTotal = ((billToFloat * 18) / 100);
    NSString *buttonTitle = [[NSNumber numberWithFloat:tipTotal] stringValue];
    [(UIButton *)sender setTitle:buttonTitle  forState:UIControlEventTouchUpInside];
}

- (IBAction)twentyPercentCal:(id)sender {
    float tipTotal = ((billToFloat * 20) / 100);
    NSString *buttonTitle = [[NSNumber numberWithFloat:tipTotal] stringValue];
    [(UIButton *)sender setTitle:buttonTitle  forState:UIControlEventTouchUpInside];
}

- (IBAction)thirthyPercentCal:(id)sender {
    float tipTotal = ((billToFloat * 30) / 100);
    NSString *buttonTitle = [[NSNumber numberWithFloat:tipTotal] stringValue];
    [(UIButton *)sender setTitle:buttonTitle  forState:UIControlEventTouchUpInside];
}


@end
