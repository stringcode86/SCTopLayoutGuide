//
//  SCTopLayoutGuide.m
//  InteractiveTransition
//
//  Created by Michal Inger on 06/04/2014.
//  Copyright (c) 2014 StringCode Ltd. All rights reserved.
//

#import "SCTopLayoutGuide.h"

@interface SCTopLayoutGuide ()
@end

@implementation SCTopLayoutGuide

- (NSLayoutConstraint *)topConstraint {
    if (!_topConstraint) {
        NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                      attribute:NSLayoutAttributeTop
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.superview
                                                                      attribute:NSLayoutAttributeTop
                                                                     multiplier:0
                                                                       constant:64.0];
        [self.superview addConstraint:constraint];
        _topConstraint = constraint;
    }
    return _topConstraint;
}

@end
