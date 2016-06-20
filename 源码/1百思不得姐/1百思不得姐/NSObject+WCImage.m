//
//  NSObject+WCImage.m
//  1百思不得姐
//
//  Created by 孙文策 on 16/6/20.
//  Copyright © 2016年 孙文策. All rights reserved.
//

#import "NSObject+WCImage.h"

@implementation NSObject (WCImage)
-(UIImage *)imageNamed:(NSString *)image{
    UIImage * nImage=[UIImage imageNamed:image];
    
    nImage =[nImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    return nImage;
}
@end
