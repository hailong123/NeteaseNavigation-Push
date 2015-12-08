//
//  UINavigationController+PushHelp.m
//  NetcaseNavigationDemo
//
//  Created by sunyazhou on 15/12/8.
//  Copyright © 2015年 Baidu, Inc. All rights reserved.
//

#import "UINavigationController+PushHelp.h"
#import "MusicViewController.h"

@implementation UINavigationController (PushHelp)
/**
 *  模拟网易云音乐的 push 核心代码 注意设置控制器的时候那个 animated 变化
 *
 *
 *  @param viewController 当前要push的控制器
 *  @param animated       是否需要动画效果
 */
- (void)bd_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (viewController) {
        if ([self.topViewController isKindOfClass:[MusicViewController class]]) {
            [self pushViewController:viewController animated:animated];
        } else if ([viewController isKindOfClass:[MusicViewController class]]) {
            if ([self.viewControllers containsObject:viewController]) {
                NSMutableArray *vcs = [NSMutableArray arrayWithArray:self.viewControllers];
                [vcs removeObject:viewController];
                [self setViewControllers:[NSArray arrayWithArray:vcs] animated:animated];
                [self pushViewController:viewController animated:animated];
            } else {
                [self pushViewController:viewController animated:animated];
            }
        } else {
            [self pushViewController:viewController animated:animated];
        }
    }
}
@end
