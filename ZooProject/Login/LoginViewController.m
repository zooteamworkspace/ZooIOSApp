//
//  LoginViewController.m
//  ZooProject
//
//  Created by Zoo Project on 6/2/19.
//  Copyright © 2019 Zoo Project. All rights reserved.
//

#import "LoginViewController.h"
@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TFLogin;
@property (weak, nonatomic) IBOutlet UIButton *BTLogin;
@property (weak, nonatomic) IBOutlet UITextField *TFPAss;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *imgforLeft1=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 25)]; // Set frame as per space required around icon
    [imgforLeft1 setImage:[UIImage imageNamed:@"man.png"]];
    
    [imgforLeft1 setContentMode:UIViewContentModeCenter];// Set content mode centre or fit
    
    self.TFLogin.leftView=imgforLeft1;
    self.TFLogin.leftViewMode=UITextFieldViewModeAlways;
    
    UIImageView *imgforLeft2=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 25)]; // Set frame as per space required around icon
    [imgforLeft2 setImage:[UIImage imageNamed:@"unlock.png"]];
    
    [imgforLeft2 setContentMode:UIViewContentModeCenter];// Set content mode centre or fit
    
    self.TFPAss.leftView=imgforLeft2;
    self.TFPAss.leftViewMode=UITextFieldViewModeAlways;
    
    _BTLogin.layer.cornerRadius = CGRectGetHeight(_BTLogin.frame) / 2;
    _BTLogin.clipsToBounds = YES;
    
    
    // Shadow and Radius
    self.BTLogin.layer.shadowColor = [[UIColor colorWithRed:0 green:0 blue:0 alpha:0.01f] CGColor];
    self.BTLogin.layer.shadowOffset = CGSizeMake(0, 15.0f);
    self.BTLogin.layer.shadowOpacity = 1.0f;
    self.BTLogin.layer.shadowRadius = 0.0f;
    self.BTLogin.layer.masksToBounds = NO;
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"Touch to hide");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
