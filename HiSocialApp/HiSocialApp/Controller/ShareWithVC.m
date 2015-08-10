//
//  ShareWithVC.m
//  HiSocialApp
//
//  Created by indianic on 05/08/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "ShareWithVC.h"
#import "ShareVC.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>


@interface ShareWithVC ()
- (IBAction)btnShareAction:(id)sender;

@end

@implementation ShareWithVC
@synthesize CheckBox;
@synthesize btnSecBlank;
@synthesize btnThirdCheckBox;



- (void)viewDidLoad {
    Checked = NO;
    
   // [self presentViewController: animated:<#(BOOL)#> completion:<#^(void)completion#>]
    
  
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
- (IBAction)btnBlankBox:(id)sender {

    if (!Checked) {
        [CheckBox setImage:[UIImage imageNamed:@"Uncheck1.png"] forState:UIControlStateNormal];
        Checked = YES;
        facebook=NO;
    }
    else if (Checked){
        
        [CheckBox setImage:[UIImage imageNamed:@"Checked1.png"] forState:UIControlStateNormal];
        Checked = NO;
        facebook=YES;
    }
}

- (IBAction)btnSecBlank:(id)sender {
    
    if (!Checked) {
        [btnSecBlank setImage:[UIImage imageNamed:@"Uncheck1.png"] forState:UIControlStateNormal];
        Checked = YES;
         twitter=NO;
        
    }
    else if (Checked){
        
        [btnSecBlank setImage:[UIImage imageNamed:@"Checked1.png"] forState:UIControlStateNormal];
        Checked = NO;
         twitter=YES;
    }
    
    
    
}
//- (IBAction)btnThirdCheckBox:(id)sender {
//    
//    if (!Checked) {
//        [btnThirdCheckBox setImage:[UIImage imageNamed:@"Uncheck1.png"] forState:UIControlStateNormal];
//        [CheckBox setImage:[UIImage imageNamed:@"Unchecked.png"] forState:UIControlStateNormal];
//        [btnSecBlank setImage:[UIImage imageNamed:@"Uncheck1.png"] forState:UIControlStateNormal];
//                      Checked = YES;
//        all=NO;
//    }
//    else if (Checked){
//        
//        [btnThirdCheckBox setImage:[UIImage imageNamed:@"Checked1.png"] forState:UIControlStateNormal];
//        [CheckBox setImage:[UIImage imageNamed:@"Checked1.png"] forState:UIControlStateNormal];
//        [btnSecBlank setImage:[UIImage imageNamed:@"Checked1.png"] forState:UIControlStateNormal];
//        
//          Checked = NO;
//        all=YES;
//    }
//    

    
    

- (IBAction)btnShareAction:(id)sender {
    
    
    
    if (facebook) {
        NSLog(@"Facebook is  Selected ");
        

        
        
        
        
        
    }
    else
    {
        NSLog(@"Facebook is not selected");
    }
    if (twitter) {
        NSLog(@"Twittr is  Selected");
        
        
        
    }
    else
    {
        NSLog(@"Twitter is not selected");
    }
    
    

}
@end

