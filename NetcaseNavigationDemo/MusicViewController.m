//
//  MusicViewController.m
//  NetcaseNavigationDemo
//
//  Created by sunyazhou on 15/12/8.
//  Copyright © 2015年 Baidu, Inc. All rights reserved.
//

#import "MusicViewController.h"
#import "NormalViewController.h"
@interface MusicViewController ()

@end

@implementation MusicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)pushAction:(UIButton *)sender {
    
    NormalViewController *normalVC = [[NormalViewController alloc] initWithNibName:@"NormalViewController" bundle:nil];
    normalVC.musicVC = self;
    [self.navigationController pushViewController:normalVC animated:YES];
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

@end
