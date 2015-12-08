//
//  ViewController.m
//  NetcaseNavigationDemo
//
//  Created by sunyazhou on 15/12/8.
//  Copyright © 2015年 Baidu, Inc. All rights reserved.
//

#import "ViewController.h"
#import "PlayerCenter.h"
#import "UINavigationController+PushHelp.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pushButtonAction:(UIButton *)sender {
    [self.navigationController bd_pushViewController:[PlayerCenter sharedInstance].musicVC animated:YES];
}

- (IBAction)rightButtonAction:(UIBarButtonItem *)sender {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
