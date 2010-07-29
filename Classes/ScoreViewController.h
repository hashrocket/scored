//
//  ScoreViewController.h
//  Scored
//
//  Created by Shay on 10/16/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ScoreViewController : UIViewController {

	NSString *selectedScore;
	IBOutlet UIButton *score;
	
}

@property (nonatomic, retain) NSString *selectedScore;

@end
