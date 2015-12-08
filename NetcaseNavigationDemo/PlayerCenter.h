//
//  PlayerCenter.h
//  NetcaseNavigationDemo
//
//  Created by sunyazhou on 15/12/8.
//  Copyright © 2015年 Baidu, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MusicViewController.h"
@interface PlayerCenter : NSObject
@property(nonatomic, strong)MusicViewController *musicVC;
/**
 * gets singleton object.
 * @return singleton
 */
+ (PlayerCenter*)sharedInstance;

@end
