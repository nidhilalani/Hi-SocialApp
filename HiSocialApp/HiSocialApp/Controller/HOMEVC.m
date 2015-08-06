//
//  HOMEVC.m
//  HiSocialApp
//
//  Created by indianic on 7/30/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "HOMEVC.h"
#import "SWRevealViewController.h"
@interface HOMEVC ()

@end

@implementation HOMEVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWRevealViewController *revealviewcontroller = self.revealViewController;
    if (revealviewcontroller)
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        
    }
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

@end