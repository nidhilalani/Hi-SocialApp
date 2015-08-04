//
//  NSString+validation.h
//  parsaDemo
//
//  Created by indianic on 16/07/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (validation)
-(BOOL)stringa1:(NSString *)str;
-(BOOL)conformpassword:(NSString *)pass :(NSString*)conpass;
-(BOOL) Emailvalidate:(NSString *)mail;
-(void)username:(NSString *)str;
@end
