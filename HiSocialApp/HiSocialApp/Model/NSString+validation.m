//
//  NSString+validation.m
//  parsaDemo
//
//  Created by indianic on 16/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "NSString+validation.h"
#import <UIKit/UIKit.h>
#import "RKDropdownAlert.h"
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
       [RKDropdownAlert title:@"SHARYY" message:@"invalid User Name"];
       // [RKDropdownAlert show];
    }
}
-(BOOL)phone:(NSString *)number
{
    if (number.length==10) {
        return YES;
    }
    else
    {
        [RKDropdownAlert title:@"SHARRY" message:@"Number is not valid..."];
        return NO;
    }
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
            [RKDropdownAlert title:@"SHARRY" message:@"Password And confirm password is not match"];
//            [RKDropdownAlert show];
            return NO;
        }
    }
    else
{
    [ RKDropdownAlert title:@"SHARRY" message:@"Password Legth Must be more then 6"];
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
