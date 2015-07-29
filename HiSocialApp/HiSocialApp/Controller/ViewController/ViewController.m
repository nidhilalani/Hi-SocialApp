//
//  ViewController.m
//  HiSocialApp
//
//  Created by indianic on 16/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "ViewController.h"
#import "Signup.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSignUpAction:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Storyboard1" bundle:nil];
    
    Signup *signUpVC = [storyboard instantiateViewControllerWithIdentifier:@"Signup"];
    [self.navigationController pushViewController:signUpVC animated:YES];

}
@end
