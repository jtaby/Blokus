//
//  ScoreBoardViewController.h
//  Blokus
//
//  Created by Majd Taby on 1/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ScoreBoardViewController : UIViewController {
  IBOutlet UILabel *purpleScore;
  IBOutlet UILabel *orangeScore;
}

@property (nonatomic,retain) IBOutlet UILabel *orangeScore;
@property (nonatomic,retain) IBOutlet UILabel *purpleScore;

@end
