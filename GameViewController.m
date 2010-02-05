//
//  GameViewController.m
//  Blokus
//
//  Created by Majd Taby on 1/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "GameViewController.h"
#import "ScoreBoardViewController.h"
#import "CountDownViewController.h"

@implementation GameViewController
@synthesize scoreBoard;
@synthesize countDown;
@synthesize bottomBar;
/*
// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void) viewDidLoad {
  [self initScoreBoard];
  [self initCountDownTimer];
  [self initGameOptions];
  [self initPieceSelector];
  
  [super viewDidLoad];
}

- (void) initScoreBoard {
	UINavigationItem *navItem = [self navigationItem];
  ScoreBoardViewController *scoreboardView = [[ScoreBoardViewController alloc] initWithNibName:@"ScoreBoard" bundle:nil];
  scoreBoard = scoreboardView;
  [navItem setTitleView:scoreboardView.view];
}

- (IBAction) testerClicked: (id) sender{
  
  [[scoreBoard purpleScore] setText:@"110"]; 
  [[countDown remaining] setText:@"00:58"];
  
  [UIView beginAnimations:nil context:NULL];
  [UIView setAnimationDuration:0.5];
  [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
  
  [bottomBar setFrame:CGRectMake(10, 460-140, 320, 97)];
  
  [UIView commitAnimations];
}


- (void) initCountDownTimer{
	UINavigationItem *navItem = [self navigationItem];
  CountDownViewController *countDownView = [[CountDownViewController alloc] initWithNibName:@"CountDownTimer" bundle:nil];
  countDown = countDownView;

  UIBarButtonItem *countDownItem = [[UIBarButtonItem alloc] initWithCustomView:countDownView.view];
  navItem.rightBarButtonItem = countDownItem;
}

- (void) initGameOptions{
  
}

- (void) initPieceSelector{
  
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
