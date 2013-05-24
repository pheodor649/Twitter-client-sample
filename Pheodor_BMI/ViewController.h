//
//  ViewController.h
//  Pheodor_BMI
//
//  Created by Pheodor on 2013/01/12.
//  Copyright (c) 2013年 Pheodor.jp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *tfHeight;
@property (retain, nonatomic) IBOutlet UITextField *tfWeight;
- (IBAction)btnCalc:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *labelBmiTitle;
@property (retain, nonatomic) IBOutlet UILabel *labelBmiValue;
@property (retain, nonatomic) IBOutlet UILabel *labelBmiText;
- (IBAction)Clr:(id)sender;


@end
