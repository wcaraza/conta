//
//  MexicoSearchViewController.m
//  conta
//
//  Created by Walter Caraza Barrera on 1/11/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import "MexicoSearchViewController.h"
#import "AppDelegate.h"
#import "DetailViewController.h"
#import "OverlayViewController.h"
#import <sqlite3.h>

@implementation MexicoSearchViewController

- (void)viewDidLoad {
    
    [self listar2];
    [super viewDidLoad];
    
    UIView *backgroundView = [[UIView alloc] initWithFrame: self.view.frame];
    backgroundView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern_062.gif"]];
    self.tableView.backgroundView = backgroundView;
    
    copyListOfItems = [[NSMutableArray alloc] init];
	
	//Set the title
    UILabel *w = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 230, 15)];
    w.textAlignment = UITextAlignmentCenter;
    w.font = [UIFont fontWithName:@"Copperplate" size:18.0];
    w.textColor = [UIColor whiteColor];
    w.backgroundColor = [UIColor clearColor];
    w.adjustsFontSizeToFitWidth = YES;
    w.text = @"Buscar";
    
    self.navigationItem.titleView =w;
	self.navigationItem.title = @"Buscar";
    
    //Add the done button.
	self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]
                                              initWithTitle:@"Menú" style:UIBarButtonItemStylePlain target:self action:@selector(doneMenu_Clicked:)] autorelease];
	
	//Add the search bar
	self.tableView.tableHeaderView = searchBar;
	searchBar.autocorrectionType = UITextAutocorrectionTypeNo;
	searchBar.backgroundImage = [UIImage imageNamed:@"pattern_062.gif"];
	searching = NO;
	letUserSelectRow = YES;
    
}

- (void) doneMenu_Clicked:(id)sender {
	
	AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[mainDelegate flipToBackBuscarMexico];
}


-(NSMutableArray *) listar2{
    listOfItems = [[NSMutableArray alloc] init];
    my1 = [[NSMutableArray alloc] init];
    my2 = [[NSMutableArray alloc] init];
    my3 = [[NSMutableArray alloc] init];
    my4 = [[NSMutableArray alloc] init];
    my5 = [[NSMutableArray alloc] init];
    my6 = [[NSMutableArray alloc] init];
    my7 = [[NSMutableArray alloc] init];
    my8 = [[NSMutableArray alloc] init];
    my9 = [[NSMutableArray alloc] init];
    
    @try {
        NSFileManager *fileMgr = [NSFileManager defaultManager];
        NSString *dbPath = [[[NSBundle mainBundle] resourcePath ]stringByAppendingPathComponent:@"pce.sqlite"];
        BOOL success = [fileMgr fileExistsAtPath:dbPath];
        if(!success)
        {
            NSLog(@"Cannot locate database file '%@'.", dbPath);
        }
        if(!(sqlite3_open([dbPath UTF8String], &db) == SQLITE_OK))
        {
            NSLog(@"An error has occured: %s", sqlite3_errmsg(db));
            
        }
        
        const char *elemento = "SELECT * FROM elemento";
        sqlite3_stmt *xor;
        sqlite3_prepare(db, elemento, -1, &xor, NULL);
        NSDictionary *w1,*w2,*w3,*w4,*w5,*w6,*w7,*w8,*w9;
        
        while(sqlite3_step(xor)==SQLITE_ROW){
            
            NSString  *d = [NSString stringWithUTF8String:(char *) sqlite3_column_text(xor,0)];
            NSString *title = [NSString stringWithUTF8String:(char *) sqlite3_column_text(xor,1)];
            
            NSString *query = @"SELECT ide,(ide || '. ' || desc),explicacion FROM cuenta_mexico WHERE idt=";
            NSString *myString = [NSString stringWithFormat:@"%d",[d intValue]];
            NSString *exe = [query stringByAppendingString:myString];
            const char *sql = [exe UTF8String];
            
            sqlite3_stmt *sqlStatement;
            if(sqlite3_prepare(db, sql, -1, &sqlStatement, NULL) != SQLITE_OK)
            {
                NSLog(@"Problem with prepare statement:  %s", sqlite3_errmsg(db));
            }else{
                
                while (sqlite3_step(sqlStatement)==SQLITE_ROW) {
                    NSString  *ide = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,0)];
                    NSString *name = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,1)];
                    NSString *exp = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,2)];
                    MexicoSearchViewController *x = [[MexicoSearchViewController alloc]init];
                    x.ide = [ide intValue];
                    x.name =  name;
                    x.title = title;
                    x.explicacion = exp;
                    
                    
                    switch ([d intValue]) {
                            //Attribute Section
                        case 1:  w1 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my1 addObject:w1];break;
                        case 2:  w2 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my2 addObject:w2];break;
                        case 3:  w3 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my3 addObject:w3];break;
                        case 4:  w4 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my4 addObject:w4];break;
                        case 5:  w5 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my5 addObject:w5];break;
                        case 6:  w6 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my6 addObject:w6];break;
                        case 7:  w7 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my7 addObject:w7];break;
                        case 8:  w8 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my8 addObject:w8];break;
                        case 9:  w9 = [NSDictionary dictionaryWithObject:x forKey:@"cuentas"];[my9 addObject:w9];break;
                    }
                    
                }
                
                switch ([d intValue]) {
                        //Attribute Section
                    case 1:  [listOfItems addObject:my1];break;
                    case 2:  [listOfItems addObject:my2];break;
                    case 3:  [listOfItems addObject:my3];break;
                    case 4:  [listOfItems addObject:my4];break;
                    case 5:  [listOfItems addObject:my5];break;
                    case 6:  [listOfItems addObject:my6];break;
                    case 7:  [listOfItems addObject:my7];break;
                    case 8:  [listOfItems addObject:my8];break;
                    case 9:  [listOfItems addObject:my9];break;
                }
                
            }
            
            sqlite3_finalize(sqlStatement);
            
        }
        
    }
    
    @catch (NSException *exception) {
        NSLog(@"Problem with prepare statement:  %s", sqlite3_errmsg(db));
    }
    @finally {
        //sqlite3_finalize(sqlStatement);
        sqlite3_close(db);
        
        return listOfItems;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    if (searching)
		return 1;
	else
		return false;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
    
    if (searching)
		return [copyListOfItems count];
	else {
		return false;
	}
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(searching){
        if (copyListOfItems.count > 0)
            return @"Resultados:";
        else
            return @"No se encontró coincidencias.";
	    
    }
	
	/*switch (section) {
        case 0:return @"ACTIVO DISPONIBLE Y EXIGIBLE";break;
        case 1:return @"ACTIVO REALIZABLE";break;
        case 2:return @"ACTIVO INMOVILIZADO";break;
        case 3:return @"PASIVO";break;
        case 4:return @"PATRIMONIO NETO";break;
        case 5:return @"GASTOS POR NATURALEZA";break;
        case 6:return @"INGRESOS";break;
        case 7:return @"SALDOS INTERMEDIARIOS DE GESTION";break;
        case 8:return @"CONTABILIDAD ANALITICA DE EXPLOTACION";break;
    }*/
    return nil;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"listcell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    if(searching){
        cell.textLabel.text = [copyListOfItems objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = nil;
	}
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	//Get the selected country
    DetailViewController *detail = [[DetailViewController alloc] initWithStyle: UITableViewStyleGrouped];
    
    MexicoSearchViewController *x;
    
    if(searching){
        int y=0;
        for (NSDictionary *dictionary in listOfItems)
        {
            
            switch (y) {
                case 0:
                    for (NSDictionary *dictionary in my1)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 1:
                    for (NSDictionary *dictionary in my2)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 2:
                    for (NSDictionary *dictionary in my3)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 3:
                    for (NSDictionary *dictionary in my4)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 4:
                    for (NSDictionary *dictionary in my5)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 5:
                    for (NSDictionary *dictionary in my6)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 6:
                    for (NSDictionary *dictionary in my7)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 7:
                    for (NSDictionary *dictionary in my8)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
                case 8:
                    for (NSDictionary *dictionary in my9)
                    {
                        x = [dictionary objectForKey:@"cuentas"];
                        if([x.name isEqualToString:[copyListOfItems objectAtIndex:indexPath.row]]){
                            detail.selectIndex = x.ide;
                            detail.cellName = x.name;
                            detail.explicacion = x.explicacion;
                            detail.pais = @"mexico";
                        }
                        
                    }
                    break;
            }
            y++;
        }
        
	}
    
    [self.navigationController pushViewController:detail animated:YES];
    
}

- (NSIndexPath *)tableView :(UITableView *)theTableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	if(letUserSelectRow)
		return indexPath;
	else
		return nil;
}

/*- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
 
 //return UITableViewCellAccessoryDetailDisclosureButton;
 return UITableViewCellAccessoryDisclosureIndicator;
 }*/

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
	[self tableView:tableView didSelectRowAtIndexPath:indexPath];
}



#pragma mark -
#pragma mark Search Bar

- (void) searchBarTextDidBeginEditing:(UISearchBar *)theSearchBar {
	
	//This method is called again when the user clicks back from teh detail view.
	//So the overlay is displayed on the results, which is something we do not want to happen.
	if(searching)
		return;
	
	//Add the overlay view.
	if(ovController == nil)
		ovController = [[OverlayViewController alloc] initWithNibName:@"OverlayViewController" bundle:[NSBundle mainBundle]];
	
	CGFloat yaxis = self.navigationController.navigationBar.frame.size.height;
	CGFloat width = self.view.frame.size.width;
	CGFloat height = self.view.frame.size.height;
	
	//Parameters x = origion on x-axis, y = origon on y-axis.
	CGRect frame = CGRectMake(0, yaxis, width, height);
	ovController.view.frame = frame;
	ovController.view.backgroundColor = [UIColor grayColor];
	ovController.view.alpha = 0.5;
	
	//ovController.mxController = self;
	
	[self.tableView insertSubview:ovController.view aboveSubview:self.parentViewController.view];
	
	searching = YES;
	letUserSelectRow = NO;
	self.tableView.scrollEnabled = NO;
	
	//Add the done button.
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc]
											   initWithBarButtonSystemItem:UIBarButtonSystemItemDone
											   target:self action:@selector(doneSearching_Clicked:)] autorelease];
}

- (void)searchBar:(UISearchBar *)theSearchBar textDidChange:(NSString *)searchText {
    
	//Remove all objects first.
	[copyListOfItems removeAllObjects];
	
	if([searchText length] > 0) {
		
		[ovController.view removeFromSuperview];
		searching = YES;
		letUserSelectRow = YES;
		self.tableView.scrollEnabled = YES;
		[self searchTableView];
	}
	else {
		
		[self.tableView insertSubview:ovController.view aboveSubview:self.parentViewController.view];
		
		searching = NO;
		letUserSelectRow = NO;
		self.tableView.scrollEnabled = NO;
	}
	
	[self.tableView reloadData];
}

- (void) searchBarSearchButtonClicked:(UISearchBar *)theSearchBar {
	
	[self searchTableView];
}

- (void) searchTableView {
	
    NSString *searchText = searchBar.text;
	NSMutableArray *searchArray = [[NSMutableArray alloc] init];
    MexicoSearchViewController *x;
    int y=0;
    
    for (NSDictionary *dictionary in listOfItems)
	{
        
        switch (y) {
            case 0:
                for (NSDictionary *dictionary in my1)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 1:
                for (NSDictionary *dictionary in my2)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 2:
                for (NSDictionary *dictionary in my3)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 3:
                for (NSDictionary *dictionary in my4)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 4:
                for (NSDictionary *dictionary in my5)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 5:
                for (NSDictionary *dictionary in my6)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 6:
                for (NSDictionary *dictionary in my7)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 7:
                for (NSDictionary *dictionary in my8)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
            case 8:
                for (NSDictionary *dictionary in my9)
                {
                    x = [dictionary objectForKey:@"cuentas"];[searchArray addObject:x.name];
                }
                break;
                
        }
        y++;
        
	}
    //cell.detailTextLabel.text = [[copyListOfItems objectAtIndex:indexPath.row] objectAtIndex:1];
    //[searchArray objectAtIndex:0]
    for (NSString *sTemp in searchArray)
	{
		NSRange titleResultsRange = [sTemp rangeOfString:searchText options:NSCaseInsensitiveSearch];
		
		if (titleResultsRange.length > 0)
			[copyListOfItems addObject:sTemp];
	}
	searchArray = nil;
    
}

- (void) doneSearching_Clicked:(id)sender {
	
	searchBar.text = @"";
	[searchBar resignFirstResponder];
	
	letUserSelectRow = YES;
	searching = NO;
	self.navigationItem.rightBarButtonItem = nil;
	self.tableView.scrollEnabled = YES;
	
	[ovController.view removeFromSuperview];
	[ovController release];
	ovController = nil;
	
	[self.tableView reloadData];
}

- (void)dealloc {
	
	[ovController release];
	[copyListOfItems release];
	[searchBar release];
	[listOfItems release];
    //[tabbar release];
    [super dealloc];
}


- (void)viewDidUnload {
    [super viewDidUnload];
}
@end

