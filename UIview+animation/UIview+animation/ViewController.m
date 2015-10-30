//
//  ViewController.m
//  UIview+animation
//
//  Created by cnki on 15/10/30.
//  Copyright © 2015年 cnki. All rights reserved.
//

#import "ViewController.h"
#import "UIView+CHDAnimation.h"
@interface ViewController ()
{
    NSArray *arr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    arr = @[@"IMG_0006.jpg",@"IMG_0007.jpg"];
    
    UIButton *Btn = [[UIButton alloc] initWithFrame:self.view.bounds];
    [Btn setImage:[UIImage imageNamed:arr[arc4random()%2]] forState:UIControlStateNormal];
    Btn.adjustsImageWhenHighlighted = NO;
    [Btn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:Btn];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)btnclick:(UIButton *)btn
{
    /*
     共11种 动画
     CHDpageCurl,
     CHDpageUnCurl,
     CHDrippleEffect,
     CHDsuckEffect,
     CHDcube,
     CHDoglFlip,
     CHDcameraIrisHollowOpen,
     CHDcameraIrisHollowClose,
     CHDfade,
     CHDmovein,
     CHDpush
     */
    /*
     开始方向
     CHDleft,
     CHDright,
     CHDtop,
     CHDbottom,
     CHDmiddle
     */
    [btn setAnimationWithType:arc4random()%11 duration:1.0 direction:arc4random()%5];
    [btn setImage:[UIImage imageNamed:arr[arc4random()%2]] forState:UIControlStateNormal];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
