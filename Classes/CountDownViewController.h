//
//  CountDownViewController.h
//  Blokus
//
//  Created by Majd Taby on 1/3/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CountDownViewController : UIViewController {
  IBOutlet UILabel *remaining;
}

@property (nonatomic, retain) IBOutlet UILabel *remaining;


@end
