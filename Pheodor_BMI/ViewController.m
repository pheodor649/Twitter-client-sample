//
//  ViewController.m
//  Pheodor_BMI
//
//  Created by Pheodor on 2013/01/12.
//  Copyright (c) 2013年 Pheodor.jp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _labelBmiTitle.hidden = YES;
    _labelBmiValue.hidden = YES;
    _labelBmiText.hidden = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_tfHeight release];
    [_tfWeight release];
    [_labelBmiTitle release];
    [_labelBmiValue release];
    [_labelBmiText release];

    [super dealloc];
}
- (IBAction)btnCalc:(id)sender {
    float height = [_tfHeight.text floatValue]/100;
    float weight = [_tfWeight.text floatValue];
    float bmiValue = weight/(height*height);
    _labelBmiValue.text = [[NSString alloc]initWithFormat:@"%.2f",bmiValue];
    
    if (bmiValue <17.6) {
        _labelBmiText.text = @"やせ過ぎです";
    }else if(bmiValue <19.8){
        _labelBmiText.text = @"やせ気味です";
    }else if(bmiValue <24.2){
        _labelBmiText.text = @"標準的な体重です";
    }else if(bmiValue <26.4){
        _labelBmiText.text = @"太り気味です";
    }else{
    _labelBmiText.text =@"肥満です";
    }
    _labelBmiTitle.hidden = NO;
    _labelBmiValue.hidden = NO;
    _labelBmiText.hidden = NO;

}
- (IBAction)Clr:(id)sender {
    
    _labelBmiText.text = NULL;
    _labelBmiTitle.hidden =YES ;
    _labelBmiValue.text = NULL;


}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
