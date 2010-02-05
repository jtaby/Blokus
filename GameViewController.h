//
//  GameViewController.h
//  Blokus
//
//  Created by Majd Taby on 1/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ScoreBoardViewController;
@class CountDownViewController;

@interface GameViewController : UIViewController {
  ScoreBoardViewController *scoreBoard;
  CountDownViewController *countDown;
  
  IBOutlet UIImageView *bottomBar;
}

@property (nonatomic,retain) ScoreBoardViewController *scoreBoard;
@property (nonatomic,retain) CountDownViewController *countDown;
@property (nonatomic,retain) IBOutlet UIImageView *bottomBar;

- (IBAction) testerClicked: (id) sender;

- (void) initScoreBoard;
- (void) initCountDownTimer;
- (void) initGameOptions;
- (void) initPieceSelector;

@end
