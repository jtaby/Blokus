//
//  BlokusAppDelegate.h
//  Blokus
//
//  Created by Majd Taby on 1/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

@interface BlokusAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

