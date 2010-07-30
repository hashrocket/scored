//
//  ScoredAppDelegate.m
//  Scored
//
//  Created by Shay on 10/16/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "ScoredAppDelegate.h"
#import "PickerViewController.h"

@implementation ScoredAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    navigationController = [[UINavigationController alloc] init];
	
    if ( IS_IPAD ) {
        [window setFrame:CGRectMake(0, 0, 768, 1024)];
        viewController = [[PickerViewController alloc] initWithNibName:@"Picker-iPad" bundle:nil];
    } else {
        [window setFrame:CGRectMake(0, 0, 320, 480)];
        viewController = [[PickerViewController alloc] initWithNibName:@"Picker" bundle:nil];        
    }
	[window addSubview:navigationController.view];
	[navigationController setNavigationBarHidden:YES animated:NO];
	[navigationController pushViewController:viewController animated:NO];
	[viewController release];
	
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [navigationController release];
    [window release];
    [super dealloc];
}


@end
