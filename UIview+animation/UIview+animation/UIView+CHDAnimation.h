//
//  UIView+CHDAnimation.h
//  pictureAnimation
//
//  Created by chd on 15-3-27.
//  Copyright (c) 2015年 chd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (CHDAnimation)
typedef enum{
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
    
}AnimationType;
typedef enum{
    CHDleft,
    CHDright,
    CHDtop,
    CHDbottom,
    CHDmiddle
    
}Direction;
- (void)setAnimationWithType:(AnimationType)animation duration:(float)s direction:(Direction)d;
@end
