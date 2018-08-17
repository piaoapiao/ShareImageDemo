//
//  MyDate.m
//  ShareImageDemo
//
//  Created by guodong on 2018/8/16.
//  Copyright © 2018年 maizi. All rights reserved.
//

#import "MyDate.h"

@implementation MyDate

-(void)dealloc
{
    printf("dealloc  MyDate");
    [self gogo];
}


-(void)gogo
{
        printf("dealloc  gogo");
}

@end
