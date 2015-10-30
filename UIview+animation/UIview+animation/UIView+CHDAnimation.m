//
//  UIView+CHDAnimation.m
//  pictureAnimation
//
//  Created by chd on 15-3-27.
//  Copyright (c) 2015年 chd. All rights reserved.
//

#import "UIView+CHDAnimation.h"

@implementation UIView (CHDAnimation)
- (void)setAnimationWithType:(AnimationType)animation duration:(float)s direction:(Direction)d{
    CATransition*ani=[CATransition animation];
    
    ani.duration = s;
    switch (d) {
        case CHDleft:
            ani.subtype = kCATransitionFromLeft;
            break;
        case CHDright:
            ani.subtype = kCATransitionFromRight;
            break;
        case CHDtop:
            ani.subtype = kCATransitionFromTop;
            break;
        case CHDbottom:
            ani.subtype = kCATransitionFromBottom;
            break;
            
        case CHDmiddle:
            ani.subtype = kCATruncationMiddle;
            break;
        default:
            break;
    }
    switch (animation) {
        case CHDpageCurl:
        {
            ani.type = @"pageCurl";
        }
            break;
        case CHDpageUnCurl:
        {
            ani.type = @"pageUnCurl";
        }
            break;
        case CHDrippleEffect:
        {
            ani.type = @"rippleEffect";
        }
            break;
        case CHDsuckEffect:
        {
            ani.type = @"suckEffect";
        }
            break;
        case CHDcube:
        {
            ani.type = @"cube";
        }
            break;
        case CHDcameraIrisHollowOpen:
        {
            ani.type = @"cameraIrisHollowOpen";
        }
            break;
        case CHDoglFlip:
        {
            ani.type = @"oglFlip";
        }
            break;
        case CHDcameraIrisHollowClose:
        {
            ani.type = @"cameraIrisHollowClose";
            
        }break;
        case CHDmovein:
            ani.type = kCATransitionMoveIn;
            break;
        case CHDpush:
            ani.type = kCATransitionPush;
            break;
        case CHDfade:
            ani.type = kCATransitionFade;
            break;
            
        default:
            break;
    }
    [self.layer addAnimation:ani forKey:nil];
    
    
}

@end
