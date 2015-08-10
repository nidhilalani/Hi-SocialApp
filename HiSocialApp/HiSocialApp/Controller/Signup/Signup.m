//
//  Signup.m
//  HiSocialApp
//
//  Created by indianic on 27/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "Signup.h"
#import <Parse/Parse.h>
#import "RKDropdownAlert.h"
#import "NSString+validation.h"
#import "Constant.h"


@interface Signup ()


@end

@implementation Signup

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnSignUpAction:(id)sender {
   
    
   NSString *email=_txtEmailId.text;
    
#pragma  Alerts
//
    NSString *str=[[NSString alloc]init];
    str=_txtMobNo.text;
    
    if ([self.txtFirstName.text isEqual:@""]) {
        [RKDropdownAlert title:@myAppName message:@"Please enter first name"];
        return;
    }else if ([self.txtLastName.text isEqual:@""]){
        [RKDropdownAlert title:@myAppName message:@"Please enter last name"];
        return;
    }else if ([self.txtEmailId.text isEqual:@""]){
        [RKDropdownAlert title:@myAppName message:@"Please enter emailid"];
        return;
    }else if (![email Emailvalidate:email]) {
        [RKDropdownAlert title:@myAppName message:@"Please enter valid emailid"];
        return;

    }else if ([self.txtMobNo.text isEqual:@""]){
        [RKDropdownAlert title:@myAppName message:@"Please enter mobile number"];
        return;

    }else if ([self validatePhone:self.txtMobNo.text]){
        [RKDropdownAlert title:@myAppName message:@"Please Enter Numeric Value Only"];
    }
    else if ([self.txtPassword.text isEqual:@""]){
        [RKDropdownAlert title:@myAppName message:@"Please enter password"];
        return;

    }else if ([self.txtConfirmPassword.text isEqual:@""]){
        [RKDropdownAlert title:@myAppName message:@"Please enter password again"];
        
        return;

    }
    else if(str.length!=10)
    {
        [RKDropdownAlert title:@"Number Must be 10 digit long"];
        
        return;

    }
    
   
    NSArray *subStrings = [email componentsSeparatedByString:@"%@"];
    
    NSString *PASSWD=_txtPassword.text;
    NSString *CPASSWD=_txtConfirmPassword.text;
    
    
   
    
    if ([PASSWD conformpassword:PASSWD :CPASSWD]) {
        
                PFUser *objSignup=[PFUser user];
    
                NSString *username=[@"%@",subStrings objectAtIndex:0];
                objSignup.username=username;
                objSignup.email=_txtEmailId.text;
                objSignup.password=_txtPassword.text;
    
                objSignup[@"FirstName"]=_txtFirstName.text;
                objSignup[@"LastName"]=_txtLastName.text;
                objSignup[@"MobileNo"]=_txtMobNo.text;
    
       // objSignup[@"ConfirmPassword"]=_txtConfirmPassword.text;
                if(_swiGender.on)
                {
            
                    objSignup[@"Gender"]=_lblGender.text;
                }
                else
                {
                        objSignup[@"Gender"]=_lblGender.text;
                }
    
        
                [objSignup signUpInBackgroundWithBlock:^(BOOL succ,NSError *error)
                 {
                     if (succ) {
                         NSLog(@"Success");
                     }else {
                 
                         NSLog(@"error...%ld",(long)error.code);
                         if (error.code==202) {
                                [RKDropdownAlert title:@"Username already taken "];
                         }
                 
                     }
                 }];
 
    }
}
    
    
- (BOOL)validatePhone:(NSString *)phoneNumber
{
    NSString *phoneRegex = @"^((\\+)|(00))[0-9]{6,14}$";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    
    return [phoneTest evaluateWithObject:phoneNumber];
    
}
- (IBAction)SwitchGenderAction:(id)sender {
    
    if(_swiGender.on)
    {
        _lblGender.text=@"Male";
    }
    else
    {
        _lblGender.text=@"Female";
    }
}



@end
