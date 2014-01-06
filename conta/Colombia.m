//
//  Colombia.m
//  conta
//
//  Created by Walter Caraza Barrera on 11/12/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import "Colombia.h"
#import "AppDelegate.h"

@interface Colombia ()

@end

@implementation Colombia
@synthesize cuentas;
@synthesize ayuda;
@synthesize buscar;

- (IBAction)cuentas:(id)sender{
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [mainDelegate flipToFrontColombia];
    
}

- (IBAction)buscar:(id)sender{
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[mainDelegate flipToFrontBuscarColombia];
    
}

- (IBAction)ayuda:(id)sender{
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[mainDelegate flipToFrontAyudaColombia];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_non_title.png"]];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern_062.gif"]];
    
    //Set the title
    UILabel *w = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 290, 15)];
    w.textAlignment = UITextAlignmentCenter;
    w.font = [UIFont fontWithName:@"Copperplate" size:18.0];
    w.textColor = [UIColor whiteColor];
    w.backgroundColor = [UIColor clearColor];
    w.adjustsFontSizeToFitWidth = YES;
    w.text = @"Menú";
    
    self.navigationItem.titleView =w;
	//self.navigationItem.title = @"Menú";
    
    //Add the done button.
	self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]
                                              initWithTitle:@"País" style:UIBarButtonItemStylePlain target:self action:@selector(doneMenu_Clicked:)] autorelease];
    
    
    UIImage *logo = [UIImage imageNamed:@"1355280987_Colombia-Flag.png"];
    UIImageView *logoView = [[UIImageView alloc]initWithImage:logo];
    logoView.frame = CGRectMake(115, 5, 40, 30);
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    [self.navigationController.navigationBar addSubview:logoView];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setCuentas:nil];
    [self setAyuda:nil];
    [self setBuscar:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [cuentas release];
    [ayuda release];
    [buscar release];
    [super dealloc];
}

- (void) doneMenu_Clicked:(id)sender {
	
	AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[mainDelegate flipToBackPaises];
}

@end

