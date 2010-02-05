#import "RootViewController.h"
#import "AboutViewController.h"
#import "SettingsViewController.h"
#import "GameViewController.h"

@implementation RootViewController

@synthesize views;

- (void)awakeFromNib {
	// we'll keep track of our views in this array
	views = [ [NSMutableArray alloc] init];
	
	// allocate a set of views and add to our view array as a dictionary item
	GameViewController *gameViewController = [[GameViewController alloc] init];
	gameViewController.title = @"Single Player";
	[views addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					  @"Single Player",			@"title",
					  gameViewController,	@"controller",
					  nil]];
	[gameViewController release];
	
	GameViewController *secondGameViewController = [[GameViewController alloc] init];
	secondGameViewController.title = @"Multiplayer";
	[views addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					  @"Multiplayer",			@"title",
					  secondGameViewController,	@"controller",
					  nil]];
	[secondGameViewController release];
	
	SettingsViewController *settingsViewController = [[SettingsViewController alloc] init];
	settingsViewController.title = @"Settings";
	[views addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					  @"Settings",			@"title",
					  settingsViewController,	@"controller",
					  nil]];
	[settingsViewController release];
	
	AboutViewController *aboutViewController = [[AboutViewController alloc] init];
	aboutViewController.title = @"About";
	[views addObject:[NSDictionary dictionaryWithObjectsAndKeys:
					  @"About",			@"title",
					  aboutViewController,	@"controller",
					  nil]];
	[aboutViewController release];
	
	// create a custom navigation bar button and set it to always say "Back"
	UIBarButtonItem *temporaryBarButtonItem = [[UIBarButtonItem alloc] init];
	temporaryBarButtonItem.title = @"Back";
	self.navigationItem.backBarButtonItem = temporaryBarButtonItem;
	[temporaryBarButtonItem release];
	
	//set the title of the main view
	self.title = @"Blokus";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	
    static NSString *CellIdentifier = @"Cell";
	
	NSUInteger section = [indexPath section]; 
	NSUInteger row = [indexPath row];
	
	if(section == 1){
		row += 2;	
	}
	
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
	
    // Set up the cell...
	cell.textLabel.text = [[views objectAtIndex:row] objectForKey:@"title"];
	
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here. Create and push another view controller.
	
	NSUInteger section = [indexPath section]; 
	NSUInteger row = [indexPath row];
	
	if(section == 1){
		row += 2;	
	}
	
	UIViewController *targetViewController = [[views objectAtIndex: row] objectForKey:@"controller"];
	[[self navigationController] pushViewController:targetViewController animated:YES];
}

- (void)dealloc {
	[views dealloc];
    [super dealloc];
}

@end
