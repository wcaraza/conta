//
//  MexicoSearchViewController.h
//  conta
//
//  Created by Walter Caraza Barrera on 1/11/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@class OverlayViewController;

@interface MexicoSearchViewController : UITableViewController {
	sqlite3 * db;
	NSMutableArray *listOfItems,*my1,*my2,*my3,*my4,*my5,*my6,*my7,*my8,*my9;
	NSMutableArray *copyListOfItems;
	IBOutlet UISearchBar *searchBar;
	BOOL searching;
	BOOL letUserSelectRow;
	
	OverlayViewController *ovController;
}
//@property(nonatomic,retain) NSMutableArray *listOfItems,*my,*my2;
@property(nonatomic,assign) NSInteger ide;
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *explicacion;

-(NSMutableArray *) listar2;
- (void) searchTableView;
- (void) doneSearching_Clicked:(id)sender;



@end
