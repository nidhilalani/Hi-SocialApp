//
//  HomeVC.h
//  HiSocialApp
//
//  Created by indianic on 03/08/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeVC : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgProfilePic;
@property (weak, nonatomic) IBOutlet UILabel *lblUsername;

@property(nonatomic,retain)UIImage *theImage;

- (IBAction)btnShareAction:(id)sender;

@end
