//
//  ImageGallaryVC.h
//  HiSocialApp
//
//  Created by indianic on 30/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeVC.h"
@interface ImageGallaryVC : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
{
    BOOL imgcheck;
     UIImage *img;
    IBOutlet UIImage *selectedImage;
    HomeVC *secondView;
}

@property(nonatomic,retain)UIImageView *selectedImage;
@property(nonatomic,retain)HomeVC *secondView;

-(IBAction)sendImage:(id)sender;


@property (weak, nonatomic) IBOutlet UIImageView *imgPhotoGallary;

@property (weak, nonatomic) IBOutlet UIButton *btnNext;

@property (weak, nonatomic) IBOutlet UIButton *btnSkip;
@property (weak, nonatomic) IBOutlet UIButton *btnBrowse;

- (IBAction)btnSkipAction:(id)sender;
- (IBAction)btnNextAction:(id)sender;
- (IBAction)btnBrowseAction:(id)sender;

@end
