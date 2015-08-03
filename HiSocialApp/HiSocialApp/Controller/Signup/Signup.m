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
   
    
    
#pragma  Alerts
    
    if ([self.txtFirstName.text isEqual:@""]) {
        [RKDropdownAlert title:@"Enter First Name "];
    }else if ([self.txtLastName.text isEqual:@""])
    {
        [RKDropdownAlert title:@"Enter Last Name "];
    }else if ([self.txtEmailId.text isEqual:@""]) {
        
        [RKDropdownAlert title:@"Email Required"];
    }else if ([self.txtMobNo.text isEqual:@""]){
        [RKDropdownAlert title:@"Enter Mobail Number "];
    }else if ([self.txtPassword.text isEqual:@""]){
        [RKDropdownAlert title: @"Enter Password"];
    }else if ([self.txtConfirmPassword.text isEqual:@""]){
        [RKDropdownAlert title:@"Enter Password Again"];
    }
    
    
    PFUser *objSignup=[PFUser user];
    
        



    
    NSString *email=_txtEmailId.text;
        NSArray *subStrings = [email componentsSeparatedByString:@"%@"];
    

    
    
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
                 
                 NSLog(@"error...%@",error.description);
                 
             }
         }];
        
   
}

//-(BOOL) NSStringIsValidEmail:(NSString *)checkString
//{
//    BOOL stricterFilter = NO;
//    NSString *stricterFilterString = @"^[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}$";
//    NSString *laxString = @"^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$";
//    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
//    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
//    return [emailTest evaluateWithObject:checkString];
//}
#pragma  textfield Delegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
//    BOOL t=[textField resignFirstResponder];
//    BOOL n=[textField becomeFirstResponder];
//    if ([_txtEmailId.text isEqualToString:@""]) {
//        return n;
//    }
//    else
//    {
//        return t;
//    }
    
//    if ([self.txtFirstName.text isEqual:@""]) {
//        [RKDropdownAlert title:@"Enter First Name "];
//    }else if ([self.txtLastName.text isEqual:@""])
//    {
//        [RKDropdownAlert title:@"Enter Last Name "];
//    }else if ([self.txtEmailId.text isEqual:@""]) {
//        
//        [RKDropdownAlert title:@"Email Required"];
//    }else if ([self.txtMobNo.text isEqual:@""]){
//        [RKDropdownAlert title:@"Enter Mobail Number "];
//    }else if ([self.txtPassword.text isEqual:@""]){
//        [RKDropdownAlert title: @"Enter Password"];
//    }else if ([self.txtConfirmPassword.text isEqual:@""]){
//        [RKDropdownAlert title:@"Enter Password Again"];
//    }

    
    return YES;
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
