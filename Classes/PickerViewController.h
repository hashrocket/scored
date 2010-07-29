//
//  PickerViewController.h
//  Scored
//
//  Created by Shay on 10/16/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScoreViewController;

@interface PickerViewController : UIViewController {
	
		ScoreViewController *scoreView;
	
}

@property (nonatomic,retain) ScoreViewController *scoreView;

- (IBAction)scorePicked:(id)sender;

@end

