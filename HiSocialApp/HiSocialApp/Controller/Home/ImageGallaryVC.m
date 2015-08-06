//
//  ImageGallaryVC.m
//  HiSocialApp
//
//  Created by indianic on 30/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "ImageGallaryVC.h"
#import <Parse/Parse.h>
@interface ImageGallaryVC ()<UIAlertViewDelegate>

@end

@implementation ImageGallaryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

    
    if (imgcheck==NO) {
        img =[UIImage imageNamed:@"img1.png"];
        imgcheck==YES;
    }

    
    
    if (_imgPhotoGallary.image==nil) {
        
        _btnNext.enabled=false;
    }
    else
    {
        _btnNext.enabled=true;
    }
    _btnNext.layer.cornerRadius=10;
    [[_btnNext layer]setBackgroundColor:[UIColor whiteColor].CGColor];
    _btnNext.clipsToBounds=YES;
    [self.view addSubview:_btnNext];
    
    _btnSkip.layer.cornerRadius=10;
    [[_btnSkip layer]setBackgroundColor:[UIColor whiteColor].CGColor];
    _btnSkip.clipsToBounds=YES;
    [self.view addSubview:_btnSkip];
    
    _btnBrowse.layer.cornerRadius=10;
    [[_btnBrowse layer]setBackgroundColor:[UIColor whiteColor].CGColor];
    _btnBrowse.clipsToBounds=YES;
    [self.view addSubview:_btnBrowse];
    
    _imgPhotoGallary.layer.cornerRadius=55;
    _imgPhotoGallary.clipsToBounds=YES;
    
    [self.view addSubview:_imgPhotoGallary];
 //   [self saveImageInParse];
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

- (IBAction)btnSkipAction:(id)sender {
    
    [self performSegueWithIdentifier:@"SegueHome" sender:self];
   }

- (IBAction)btnNextAction:(id)sender {
    
    
   
    if (!imgcheck) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Please Select Image..." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
      //  [self imageUpload:YES];
    }
    
    else
    {
          [self performSegueWithIdentifier:@"SegueHome" sender:self];
    }
}

- (IBAction)btnBrowseAction:(id)sender {
   
    [self imageUpload:YES];
}


-(void)imageUpload:(BOOL)isFromCamara
{
    
    if (isFromCamara && ![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        
        UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Error"
                                                              message:@"Device has no camera"
                                                             delegate:self
                                                    cancelButtonTitle:@"OK"
                                                    otherButtonTitles: nil];
        myAlertView.tag=100;
        [myAlertView show];
        
        [self saveImageInParse];
        return;

    }
   
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = isFromCamara?UIImagePickerControllerSourceTypeCamera:UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:NULL];
    
}



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView.tag==100) {
        [self imageUpload:NO];
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
//    UIImage *chooseImage=info[UIImagePickerControllerEditedImage];
//    //UIImage *originalImage=[info objectForKey:UIImagePickerControllerOriginalImage];
//    self.imgPhotoGallary.image=chooseImage;
//    
//    [picker dismissViewControllerAnimated:YES completion:NULL];
//    [self savImageinBackground:chooseImage];

    
    
    
    
    selectedImage=info[UIImagePickerControllerEditedImage];
        //UIImage *originalImage=[info objectForKey:UIImagePickerControllerOriginalImage];
        self.imgPhotoGallary.image=selectedImage;
    
        [picker dismissViewControllerAnimated:YES completion:NULL];
        [self savImageinBackground:selectedImage];
    
    
    
}

-(void)savImageinBackground:(UIImage *)image
{
    NSString *aStrDoc=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).lastObject;
    
    NSString *fullPath=[aStrDoc stringByAppendingPathComponent:@"sample.jpg"];
    NSData *imgData=UIImageJPEGRepresentation(image, 0.8);
    [imgData writeToFile:fullPath atomically:YES];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
}


-(void)saveImageInParse
{
    PFUser *objImg=[PFUser user];
    objImg[@"ProfilePic"]=_imgPhotoGallary.image;
    [objImg saveInBackgroundWithBlock:^(BOOL sucess,NSError *error)
     {
         if (sucess) {
             NSLog(@"Sucess...");
         }
         else
             NSLog(@"Error=%@",error.description);
     }];

}

-(IBAction)sendImage:(id)sender{
    
    
    
}
@end
