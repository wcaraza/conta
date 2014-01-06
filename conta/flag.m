//
//  flag.m
//  conta
//
//  Created by Walter Caraza Barrera on 29/09/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import "flag.h"
#import "AppDelegate.h"
#import <sqlite3.h>

@interface flag ()

@end

@implementation flag

@synthesize peru;
@synthesize mexico;
@synthesize colombia;
@synthesize version;
@synthesize valorar;
@synthesize toolbar;
@synthesize web;

- (IBAction)mexico:(id)sender{
  AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    //mainDelegate.str = nil;
  //[mainDelegate flipLeftToBack:@"mexico"];
    //mainDelegate.str = @"mexico";
    [mainDelegate flipLeftToBackMexico];
    
}

- (IBAction)peru:(id)sender{
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	
	//[[[mainDelegate viewController] theLabel] setTextColor:[UIColor redColor]];
    //mainDelegate.str = nil;
    //[delegate selected:2];
    //mainDelegate.str = @"peru";
	//[mainDelegate flipLeftToBack:@"peru"];
    [mainDelegate flipLeftToBack];
}

- (IBAction)colombia:(id)sender{
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [mainDelegate flipLeftToBackColombia];
}

- (void)loadvalorar:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"itms-apps://ax.itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=580407230"]];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *w = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 290, 15)];
    w.textAlignment = UITextAlignmentCenter;
    //lblTotCaratteri.font = [UIFont systemFontOfSize:12.0];
    w.font = [UIFont fontWithName:@"Copperplate" size:18.0];
    //w.font = [UIFont italicSystemFontOfSize:18.0];
    //w.font = [UIFont italicSystemFontOfSize:18.0];
    w.textColor = [UIColor whiteColor];
    w.backgroundColor = [UIColor clearColor];
    w.adjustsFontSizeToFitWidth = YES;
    w.text = @"Hispano: Cuentas contables";
    self.navigationItem.titleView = w;
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern_062.gif"]];
    /*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Bienvenido a Hispano Cuentas!" message:@"Consulta y encuentra la información contable que necesitas!" delegate:self cancelButtonTitle:@"Empezar" otherButtonTitles:nil];
    
    [alert show];
    [alert release];*/
    
    UILabel *lblTotCaratteri = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 230, 15)];
    lblTotCaratteri.textAlignment = UITextAlignmentCenter;
    lblTotCaratteri.font = [UIFont fontWithName:@"Copperplate" size:12.0];
    lblTotCaratteri.textColor = [UIColor grayColor];
    lblTotCaratteri.backgroundColor = [UIColor clearColor];
    lblTotCaratteri.adjustsFontSizeToFitWidth = YES;
    lblTotCaratteri.text = @"Version 1.4";
    
    [(UIBarButtonItem *)version initWithCustomView:lblTotCaratteri];
    /* AGREGAR IMAGEN AL TOOLBAR
    UIImage *logo = [UIImage imageNamed:@"1358045764_001_15.png"];
    UIImageView *logoView = [[UIImageView alloc]initWithImage:logo];
    logoView.frame = CGRectMake(0, 0, 20, 20);
    
    [(UIBarButtonItem *)valorar initWithCustomView:logoView];*/
    
 
    
    /*[valorar setAction:@selector(loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://google.com"]])];*/
    
    //[valorar setTarget:self];
    [valorar setAction:@selector(loadvalorar:)];
    
    //[(UIBarButtonItem *)valorar initWithImage:logo style:UIBarButtonSystemItemAction target:nil action:nil];
    
    //UIBarButtonItem *valorar = [[UIBarButtonItem alloc] initWithTitle:@"valorar" style:UIBarButtonSystemItemAction target:self action:@selector(getTruckStopListAction)];
    //self.navigationItem.rightBarButtonItem = valorar;
    //[barListBtn release];
    
    UIBarButtonItem *flexibleSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    [toolbar setItems:[NSArray arrayWithObjects:flexibleSpace,version,valorar, nil]];
    [flexibleSpace release];
    
    //UIBarButtonItem* item = [[UIBarButtonItem alloc] initWithImage: logo style: UIBarButtonItemStyleBordered target: nil action: nil];
    
    // Do any additional setup after loading the view from its nib.
}

/*- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:@"Valorar"])
    {
        //NSLog(@"Button 1 was selected.");
        
       
        
    }
}*/

- (void)viewDidUnload
{
    [self setVersion:nil];
    [self setValorar:nil];
    [self setWeb:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [version release];
    [valorar release];
    [toolbar release];
    [web release];
    [super dealloc];
}
@end
