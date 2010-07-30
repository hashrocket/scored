//
//  ScoreViewController.m
//  Scored
//
//  Created by Shay on 10/16/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ScoreViewController.h"


@implementation ScoreViewController

@synthesize selectedScore;

- (void)viewDidLoad {
	[score setTitle:[self selectedScore] forState:UIControlStateNormal];
    [super viewDidLoad];
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if ( event.subtype == UIEventSubtypeMotionShake )
    {
		[self.navigationController popViewControllerAnimated:YES];
    }
	
    if ( [super respondsToSelector:@selector(motionEnded:withEvent:)] )
        [super motionEnded:motion withEvent:event];
}

- (BOOL)canBecomeFirstResponder
{ return YES; }

@end
