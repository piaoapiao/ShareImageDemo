//
//  ViewController.m
//  ShareImageDemo
//
//  Created by guodong on 2018/8/9.
//  Copyright © 2018年 maizi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)share:(id)sender;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)share:(id)sender {
    NSLog(@"test");
    static int  a = 0;
    a++;
    NSString *str = [NSString stringWithFormat:@"count:%d",a];
    UIPasteboard* pasteboard = [UIPasteboard generalPasteboard];
    
//    UIPasteboard* pasteboard = [UIPasteboard generalPasteboard];
//    //[pasteboard setString:str];
//    NSString *str = [pasteboard string];
//    if(str)
//    {
//        [self setTitle:str];
//    }
    [pasteboard setString:str];
    
    
    
   
    //    UIPasteboard* pasteboard = [UIPasteboard generalPasteboard];
    //    UIImage *image = [pasteboard image];
    //    if(image)
    //    {
    //        [self.loginBtn setBackgroundImage:image forState:UIControlStateNormal];
    //    }
    
    if(a%2==0)
    {
        [pasteboard setImage:[UIImage imageNamed:@"ykt"]];
    }
    else
    {
        [pasteboard setImage:[UIImage imageNamed:@"dy"]];
    }
    
    
    


    NSLog(@"您点击的是拷贝%@",pasteboard.items);
     
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"NONOBANK://test"]];
    
}
@end
