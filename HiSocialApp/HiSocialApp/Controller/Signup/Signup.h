//
//  Signup.h
//  HiSocialApp
//
//  Created by indianic on 27/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Signup : UIViewController<UITextFieldDelegate>
{
    NSString *checkstring;
    NSString *phoneNumber;
}

@property (weak, nonatomic) IBOutlet UITextField *txtFirstName;
@property (weak, nonatomic) IBOutlet UITextField *txtLastName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmailId;
@property (weak, nonatomic) IBOutlet UITextField *txtMobNo;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtConfirmPassword;
@property (weak, nonatomic) IBOutlet UISwitch *swiGender;
@property (weak, nonatomic) IBOutlet UILabel *lblGender;


- (IBAction)btnSignUpAction:(id)sender;
- (IBAction)SwitchGenderAction:(id)sender;


@end
