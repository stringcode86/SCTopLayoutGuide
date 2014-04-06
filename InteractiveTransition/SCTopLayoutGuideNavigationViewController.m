//
//  SCTopLayoutGuideNavigationViewController.m
//  InteractiveTransition
//
//  Created by Michal Inger on 06/04/2014.
//  Copyright (c) 2014 StringCode Ltd. All rights reserved.
//

#import "SCTopLayoutGuideNavigationViewController.h"
#import "SCTopLayoutGuide.h"

@interface SCTopLayoutGuideNavigationViewController ()
@property (nonatomic, weak) SCTopLayoutGuide *scTopLayoutGuide;
@end

@implementation SCTopLayoutGuideNavigationViewController

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    [self updateScLayoutGuidesAnimated:YES];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    [self updateScLayoutGuidesAnimated:YES];
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    [super willAnimateRotationToInterfaceOrientation:toInterfaceOrientation duration:duration];
    [self updateScLayoutGuidesAnimated:NO];
}

- (void)updateScLayoutGuidesAnimated:(BOOL)animated {
    [self.viewControllers enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if ([obj respondsToSelector:@selector(scTopLayoutGuide)]) {
            [obj scTopLayoutGuide].topConstraint.constant = CGRectGetMaxY(self.navigationBar.frame);
            if (!animated) {
                [[obj scTopLayoutGuide] layoutIfNeeded];
            } else {
                [UIView animateWithDuration: self.navigationBarHidden ? 0.1 : 0.15 animations:^{
                    [[obj view]layoutIfNeeded];
                }];
            }
        }
    }];
}
@end
