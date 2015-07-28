//
//  Signup.m
//  HiSocialApp
//
//  Created by indianic on 27/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "Signup.h"
#import <Parse/Parse.h>

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
    
   
        PFUser *objSignup=[PFUser user];
    
        
        
    
    NSString *email=_txtEmailId.text;

    NSArray *subStrings = [email componentsSeparatedByString:@"@"];
    
    
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
