//
//  ViewController.m
//  ApiParams
//
//  Created by miao on 16/4/1.
//  Copyright © 2016年 miao. All rights reserved.
//

#import "ViewController.h"
#import "ParamsTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",[ParamsTool getCommonParamsString]);
}

@end
