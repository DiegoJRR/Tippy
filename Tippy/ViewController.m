//
//  ViewController.m
//  Tippy
//
//  Created by Diego de Jesus Ramirez on 23/06/20.
//  Copyright © 2020 DiegoRamirez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *mealBillField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    // Calling the endEditing method with argument YES on
    //the self.view object
    [self.view endEditing:YES];
}

- (IBAction)onEdit:(id)sender {
    double bill = [self.mealBillField.text doubleValue];
    
    NSArray *percentages = @[@(0.1), @(0.2), @(0.3)];
    
    double tipPercentage = [percentages[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip = tipPercentage * bill;
    double total = bill + tip;
    
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f", total];
}

@end
