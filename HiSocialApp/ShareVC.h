//
//  ShareVC.h
//  HiSocialApp
//
//  Created by Raviraj Jadav on 02/08/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShareVC : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imgSelectImage;

@end
