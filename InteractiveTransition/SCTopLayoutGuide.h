//
//  SCTopLayoutGuide.h
//  InteractiveTransition
//
//  Created by Michal Inger on 06/04/2014.
//  Copyright (c) 2014 StringCode Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCTopLayoutGuide : UIView
@property (nonatomic, readonly) CGFloat lenght;
@property (nonatomic, weak) NSLayoutConstraint *topConstraint;
@end
