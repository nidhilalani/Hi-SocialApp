//
//  LOGOUTVC.m
//  HiSocialApp
//
//  Created by indianic on 7/30/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "LOGOUTVC.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>
@interface LOGOUTVC ()

@end

@implementation LOGOUTVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SWRevealViewController *revealviewcontroller = self.revealViewController;
    if (revealviewcontroller)
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
    }
    
    [self revealToggle];
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)revealToggle
{
   
    if ([PFUser currentUser]) {
        UIAlertView *logoutAleart=[[UIAlertView alloc]initWithTitle:@"LOGOUT" message:@"Are you Sure Want to Logout? " delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [logoutAleart show];
        [PFUser logOut];
    }
    [self.navigationController popViewControllerAnimated:YES];
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
