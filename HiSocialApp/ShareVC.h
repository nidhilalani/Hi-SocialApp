//
//  ShareVC.h
//  HiSocialApp
//
//  Created by indianic on 30/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShareVC : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    
    BOOL Checked;
    BOOL facebook;
    BOOL twitter;
    BOOL all;
}
@property (weak, nonatomic) IBOutlet UIImageView *imgSelectedImg;

- (IBAction)btnShareAction:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btnShare;






@end
