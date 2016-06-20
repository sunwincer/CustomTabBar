//
//  WCTabBarController.m
//  1百思不得姐
//
//  Created by 孙文策 on 16/6/20.
//  Copyright © 2016年 孙文策. All rights reserved.
//

#import "WCTabBarController.h"
#import "NSObject+WCImage.h"
#import "WCJHController.h"
#import "WCMeController.h"
#import "WCNewController.h"
#import "WCFriendController.h"
#import "WCTabBar.h"

@interface WCTabBarController ()

@end

@implementation WCTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //配种tabbarItem字体
    NSDictionary * NormalTitle =@{
                                  NSFontAttributeName :[UIFont systemFontOfSize:16],
                                  NSForegroundColorAttributeName:[UIColor grayColor]
                                  };
    NSDictionary * SelectedTitle =@{
                                    NSFontAttributeName :[UIFont systemFontOfSize:16],
                                    NSForegroundColorAttributeName :[UIColor redColor]
                                    };
    UITabBarItem * item =[UITabBarItem appearance];
    [item setTitleTextAttributes:NormalTitle forState:UIControlStateNormal];
    [item setTitleTextAttributes:SelectedTitle forState:UIControlStateSelected];
    [self setupChildVC:[[WCJHController alloc]init] tabBarTitle:@"精华" NormalImage:@"tabBar_essence_icon" hilightImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[[WCNewController alloc]init] tabBarTitle:@"新帖" NormalImage:@"tabBar_new_icon" hilightImage:@"tabBar_new_click_icon"];
    [self setupChildVC:[[WCFriendController alloc]init] tabBarTitle:@"关注" NormalImage:@"tabBar_friendTrends_icon" hilightImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildVC:[[WCMeController alloc]init] tabBarTitle:@"我" NormalImage:@"tabBar_me_icon" hilightImage:@"tabBar_me_click_icon"];
    
    
    [self setValue:[[WCTabBar alloc]init] forKey:@"tabBar"];

}

-(void)setupChildVC:(UIViewController *) vc  tabBarTitle:(NSString *)title NormalImage:(NSString *)image hilightImage:(NSString *)Himage {
    
    
    vc.tabBarItem.title =title;
    vc.tabBarItem.image=[self imageNamed:image];
    vc.tabBarItem.selectedImage =[self imageNamed:Himage];
    vc.view.backgroundColor =[UIColor colorWithRed:arc4random_uniform(249)/249.0 green:arc4random_uniform(249)/249.0 blue:arc4random_uniform(249)/249.0 alpha:1.0];
    
    [self addChildViewController:vc];

    
    
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
