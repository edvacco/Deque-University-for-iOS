//
//  IACViewController.m
//  Accessibility 101
//
//  Created by Chris McMeeking on 4/14/15.
//  Copyright (c) 2015 Deque Systems. All rights reserved.
//

#import "IACViewController.h"
#import "UIView+DQView.h"
#import "DQLog.h"

#define LOG_FLAG NO

@interface IACViewController ()

@end

@implementation IACViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    UIView* firstAccessibilityElement = [self.view findFirstAccessibilityElement];
    
    firstAccessibilityElement.accessibilityTraits |= UIAccessibilityTraitHeader;
    
    DQLog(@"First A11y Element: %@", firstAccessibilityElement);
}

- (void)viewWillLayoutSubviews {
    if (self.navigationController.navigationBar.items.count >= 2) {
        UINavigationItem* navigationItem = [self.navigationController.navigationBar.items objectAtIndex:1];
        
        navigationItem.title = self.title;
    }
}

- (BOOL)shouldAutorotate {
    return NO;
}



@end
