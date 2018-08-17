//
//  ViewController.h
//  ShareImageDemo
//
//  Created by guodong on 2018/8/9.
//  Copyright © 2018年 maizi. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MyDate.h"

@interface ViewController : UIViewController

@property (nonatomic,assign) MyDate  *date;  //@property (nonatomic,strong) NSDate  *date;  assign 会被释放

@end

