//
//  NSString+validation.m
//  parsaDemo
//
//  Created by indianic on 16/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "NSString+validation.h"
#import <UIKit/UIKit.h>
@implementation NSString (validation)

-(BOOL)stringa1:(NSString *)str
{
    if ([str isEqual:@""])
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Places Fill the All field" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
        return NO;
    }
    else
    {
        return YES;
    }
    
}
-(void)username:(NSString *)str
{
    NSString *atoz=@"[A-Za-z]";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"%@", atoz];
    if ([emailTest evaluateWithObject:str]) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Enter Valid User Name ." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];

    } ;
}
-(BOOL)conformpassword:(NSString *)pass :(NSString*)conpass
{
    if(pass.length>6)
    {
        if ([pass isEqual:conpass])
        {
            return YES;
        }
        else
        {
            UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Password And Confirm Password is not match.." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
            [alert show];
            return NO;
        }
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"" message:@"Password Length is Min 6." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
        return NO;

    }
    
}
-(BOOL) Emailvalidate:(NSString *)mail
{
    BOOL stricterFilter = YES;
    NSString *stricterFilterString = @"[A-Z0-9a-z\\._%+-]+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2,4}";
    NSString *laxString = @".+@([A-Za-z0-9]+\\.)+[A-Za-z]{2}[A-Za-z]*";
    NSString *emailRegex = stricterFilter ? stricterFilterString : laxString;
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:mail];
}

@end
