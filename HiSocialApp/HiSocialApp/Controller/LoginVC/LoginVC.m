//
//  ViewController.m
//  HiSocialApp
//
//  Created by indianic on 16/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "LoginVC.h"
#import "Signup.h"
#import <Parse/Parse.h>
#import "RKDropdownAlert.h"
#import "Constant.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnLoginAction:(id)sender {
    
    [PFUser logInWithUsernameInBackground:_txtUserName.text password:_txtPassword.text block:^(PFUser *user,NSError *error)
     {
         if (user) {
             NSLog(@"Welcome,%@",_txtUserName.text);
         }
         else
         {
            
             [RKDropdownAlert title:@myAppName message:@"Username or password invalid"];
         }
     }
     ];
    
    
}


@end
