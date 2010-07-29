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
	scoreView = [[ScoreViewController alloc] initWithNibName:@"Score" bundle:nil];
	scoreView.selectedScore = [(UIButton *)sender currentTitle];
	[self.navigationController pushViewController:scoreView animated:YES];
	[scoreView becomeFirstResponder];
	[scoreView release];
	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
