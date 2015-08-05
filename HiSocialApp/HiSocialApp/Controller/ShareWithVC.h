//
//  ShareWithVC.h
//  HiSocialApp
//
//  Created by indianic on 05/08/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShareWithVC : UIViewController

@property (weak, nonatomic) IBOutlet UIView *ShareView;
@property (weak, nonatomic) IBOutlet UIButton *btnUncheck;
@property (weak, nonatomic) IBOutlet UIButton *btnCheck;



- (IBAction)btnUncheck:(id)sender;
- (IBAction)btnCheck:(id)sender;

@end
