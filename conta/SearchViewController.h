//
//  RootViewController.h
//  TableView
//
//  Created by iPhone SDK Articles on 1/17/09.
//  Copyright www.iPhoneSDKArticles.com 2009.
//

#import <UIKit/UIKit.h>
#import <sqlite3.h>

@class OverlayViewController;

@interface SearchViewController : UITableViewController {
	sqlite3 * db;
	NSMutableArray *listOfItems,*my1,*my2,*my3,*my4,*my5,*my6,*my7,*my8,*my9;
	NSMutableArray *copyListOfItems;
	IBOutlet UISearchBar *searchBar;
	BOOL searching;
	BOOL letUserSelectRow;
	OverlayViewController *ovController;
}

@property(nonatomic,assign) NSInteger ide;
@property(nonatomic,copy) NSString *name;
@property(nonatomic,copy) NSString *title;
@property(nonatomic,copy) NSString *explicacion;

-(NSMutableArray *) listar2;
- (void) searchTableView;
- (void) doneSearching_Clicked:(id)sender;



@end
