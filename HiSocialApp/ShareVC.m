//
//  ShareVC.m
//  HiSocialApp
//
//  Created by indianic on 30/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "ShareVC.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface ShareVC ()
@property (weak, nonatomic) IBOutlet UIView *popView;
@property (weak, nonatomic) IBOutlet UIView *bgFadedView;
@property (weak, nonatomic) IBOutlet UIButton *btnFB;
@property (weak, nonatomic) IBOutlet UIButton *btnTwitter;
@property (weak, nonatomic) IBOutlet UIButton *btnAll;

@end

@implementation ShareVC

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)btnPhoto:(id)sender {
    
    [self takePhotoMode:YES];
}

- (IBAction)btnGallary:(id)sender {
    [self takePhotoMode:NO];
}


-(void)takePhotoMode:(BOOL)isFromCamera{
    
    if (isFromCamera && ![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                              message:@"Device has no camera"
                                                             delegate:nil
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles: nil];
        
        [myAlertView show];
        return;
        
    }
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = isFromCamera?UIImagePickerControllerSourceTypeCamera:UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:NULL];
    
}

#pragma mark - Image Picker Controller delegate methods

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];

    
    
    
    self.imgSelectedImg.image = chosenImage;
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
    
    [self saveImageToDouments:chosenImage];
    
}

-(void)saveImageToDouments:(UIImage*)image{
    NSString *aStrDoc =NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    NSString *fullPath = [aStrDoc stringByAppendingPathComponent:@"sample.jpg"];
    
    NSData *imgData = UIImageJPEGRepresentation(image, 0.8);
    [imgData writeToFile:fullPath atomically:YES];
    
    
}
-(void)saveImageToGallary:(UIImage*)image{
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}



- (IBAction)btnShareAction:(id)sender {
    
_bgFadedView.hidden =  _popView.hidden = NO;
    _popView.transform = CGAffineTransformTranslate(_popView.transform, 0, _popView.frame.size.height);
    _bgFadedView.alpha= 0.0;

    [UIView animateWithDuration:0.4 animations:^{
        _popView.transform =  CGAffineTransformIdentity;
        _bgFadedView.alpha = 1.0;
    } completion:^(BOOL finished) {
        
    }];
    
}
- (IBAction)btnCheckmarkAction:(UIButton *)sender {
    
    sender.selected =  !sender.selected;
    switch (sender.tag) {
        case 100:
            //facebook
            if (_btnFB.selected) {
                
                
                
            }
            break;
        case 101:
            if (_btnTwitter.selected) {
                
            }
            break;
        case 102:
            if (_btnAll.selected) {
                
            }
            
            if(sender.selected){
                _btnFB.selected =  YES;
                _btnTwitter.selected =  YES;
                
            }
            else{
                _btnFB.selected=NO;
                _btnTwitter.selected=NO;
            
            }
            
            break;
        default:
            break;
    }
    
    
}
@end
