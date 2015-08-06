//
//  HomeVC.m
//  HiSocialApp
//
//  Created by indianic on 03/08/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "HomeVC.h"
#import "ImageGallaryVC.h"
@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [_imgProfilePic setImage:_theImage];
    _imgProfilePic.layer.cornerRadius=35;
    _imgProfilePic.clipsToBounds=YES;
    [self.view addSubview:_imgProfilePic];
   
    
    
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

- (IBAction)btnShareAction:(id)sender {
    
    
    UIView *objShareView=[[UIView alloc]init];
    objShareView.backgroundColor=[UIColor blackColor];
    [self.view addSubview:objShareView];
    
   
    
    
}
@end
