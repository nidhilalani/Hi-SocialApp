//
//  ShareWithVC.h
//  HiSocialApp
//
//  Created by indianic on 05/08/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>


@interface ShareWithVC : UIViewController{
    
    
    BOOL Checked;
    BOOL facebook;
    BOOL twitter;
    BOOL all;
}

@property (weak, nonatomic) IBOutlet UIButton *CheckBox;
- (IBAction)btnBlankBox:(id)sender;





- (IBAction)btnSecBlank:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *btnSecBlank;



- (IBAction)btnThirdCheckBox:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnThirdCheckBox;


@end
