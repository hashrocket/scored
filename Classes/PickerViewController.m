//
//  PickerViewController.m
//  Scored
//
//  Created by Shay on 10/16/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "PickerViewController.h"
#import "ScoreViewController.h"

@implementation PickerViewController

@synthesize scoreView;

- (void)scorePicked:(id)sender {

    if ( IS_IPAD )
        scoreView = [[ScoreViewController alloc] initWithNibName:@"Score-iPad" bundle:nil];
    else
        scoreView = [[ScoreViewController alloc] initWithNibName:@"Score" bundle:nil];

	scoreView.selectedScore = [(UIButton *)sender currentTitle];
	[self.navigationController pushViewController:scoreView animated:YES];
	[scoreView becomeFirstResponder];
	[scoreView release];
}

@end
