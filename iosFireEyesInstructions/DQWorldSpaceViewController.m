//
//  DQWorldSpaceViewController.m
//  iosFireEyesInstructions
//
//  Created by Catherine Fisher on 2/10/14.
//  Copyright (c) 2014 Deque Systems. All rights reserved.
//

#import "DQWorldSpaceViewController.h"

@interface DQWorldSpaceViewController ()

@end

@implementation DQWorldSpaceViewController {
    IBOutlet UILabel *_TitleLabel;
    IBOutlet UILabel *_WhatIsLabel;
    IBOutlet UILabel *_LinkLabel;
    IBOutlet UITextView *_TextView;
    IBOutlet UIImageView *_ImageView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //ImageView is not an accessibility element on purpose, so we set these to silence warnings.
	[_ImageView setAccessibilityHint:@""];
    [_ImageView setAccessibilityLabel:@""];

    [_TextView setEditable:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotate {
    return NO;
}

@end
