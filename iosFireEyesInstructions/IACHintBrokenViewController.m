//
//  DQBrokenHintViewController.m
//  iosFireEyesInstructions
//
//  Created by Catherine Fisher on 2/12/14.
//  Copyright (c) 2014 Deque Systems. All rights reserved.
//

#import "IACHintBrokenViewController.h"

@interface IACHintBrokenViewController ()

@end

@implementation IACHintBrokenViewController {
    IBOutlet UIButton *_buttonStarSpangledBanner;
    IBOutlet UIButton *_buttonAmazingGrace;
    IBOutlet UIButton *_buttonSinginInTheRain;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.screenName = @"Hints Broken";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_buttonStarSpangledBanner setAccessibilityLabel:@"Star Spangled Banner"];
    [_buttonStarSpangledBanner addTarget:self action:@selector(visitWebPage:) forControlEvents:UIControlEventTouchDown];
    //[_SSBDisplay setAccessibilityHint:@"Visit wiki article"];
    
    [_buttonAmazingGrace setAccessibilityLabel:@"Amazing Grace"];
    [_buttonAmazingGrace addTarget:self action:@selector(visitWebPage:) forControlEvents:UIControlEventTouchDown];
    //[_AGDisplay setAccessibilityHint:@"Visit wiki article"];
    
    [_buttonSinginInTheRain setAccessibilityLabel:@"Singing in the Rain"];
    [_buttonSinginInTheRain addTarget:self action:@selector(visitWebPage:) forControlEvents:UIControlEventTouchDown];
    //[_SITRDisplay setAccessibilityHint:@"Visit wiki article"];

}

- (void)visitWebPage:(id)sender {
    
    NSString* url = nil;
    if (sender == _buttonStarSpangledBanner) {
        url = @"http://en.wikipedia.org/wiki/The_Star-Spangled_Banner";
    } else if (sender == _buttonAmazingGrace) {
        url = @"http://en.wikipedia.org/wiki/Amazing_Grace";
    } else {
        url = @"http://en.wikipedia.org/wiki/Singin'_in_the_Rain";
    }
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
}

- (BOOL)shouldAutorotate {
    return NO;
}

@end
