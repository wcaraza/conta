//
//  AppDelegate.m
//  conta
//
//  Created by Walter Caraza Barrera on 12/09/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import "AppDelegate.h"
#import "Appirater.h"
//#import <sqlite3.h>

@implementation AppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize tabbar;
@synthesize helper;
@synthesize flag;
@synthesize search;
@synthesize ayuda;
@synthesize Mexico;
@synthesize navigationControllerMexico;
@synthesize MexicoSearch;
@synthesize MexicoAyuda;
@synthesize Colombia;
@synthesize navigationControllerColombia;
@synthesize ColombiaSearch;
@synthesize ColombiaAyuda;

/*
 @implementation AppDelegate- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
 // all your app’s startup code
 // …
 
 // call the Appirater class
 [Appirater appLaunched];return YES;
 }
 
 @end
 
 */

- (void)startupAnimationDone:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context {
    [splashView removeFromSuperview];
    [splashView release];
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
	

    
    //[[UIApplication sharedApplication] setStatusBarHidden:YES];
    //[[UIApplication sharedApplication] setStatusBarOrientation:UIInterfaceOrientationPortrait];
    //[[UIDevice currentDevice] setOrientation:UIInterfaceOrientationLandscapeRight];
    
	// Configure and show the window
    /*
	[window addSubview:[navigationController view]];
    [window addSubview:[tabbar view]];
	[window makeKeyAndVisible];*/
    
    //[window removeFromSuperview];
    //[window addSubview:[helper view]];
    
    
    /*sqlite3 * db;
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    NSString *dbPath = [[[NSBundle mainBundle] resourcePath ]stringByAppendingPathComponent:@"pce.sqlite"];
    
    BOOL success = [fileMgr fileExistsAtPath:dbPath];
    if(!success)
    {
        NSLog(@"Cannot locate database file '%@'.", dbPath);
    }
    if(!(sqlite3_open([dbPath UTF8String], &db) == SQLITE_OK))
    {
        NSLog(@"An error has occured: %@", sqlite3_errmsg(db));
        
    }
    
    const char *elemento = "SELECT * FROM pais WHERE status=1";
    sqlite3_stmt *xor;
    sqlite3_prepare(db, elemento, -1, &xor, NULL);
    int f=0;
    while(sqlite3_step(xor)==SQLITE_ROW){
        f++;
    }
    
    if(f > 0){
        [window addSubview:helper.view];
    }else{
        [window addSubview:flag.view];
    }*/
    [window addSubview:flag.view];
	[window makeKeyAndVisible];
    
    // Make this interesting.
    splashView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0, 320, 480)];
    splashView.image = [UIImage imageNamed:@"Default.png"];
    [window addSubview:splashView];
    [window bringSubviewToFront:splashView];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionNone forView:window cache:YES];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(startupAnimationDone:finished:context:)];
    splashView.alpha = 0.0;
    splashView.frame = CGRectMake(-60, -85, 440, 635);
    [UIView commitAnimations];
    
    [Appirater appLaunched];
}

- (void)flipToBack {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[navigationController.view removeFromSuperview];
	[self.window addSubview:[helper view]];
	[UIView commitAnimations];
}

- (void)flipToBackMexico {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[navigationControllerMexico.view removeFromSuperview];
	[self.window addSubview:[Mexico view]];
	[UIView commitAnimations];
}

- (void)flipToBackColombia {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[navigationControllerColombia.view removeFromSuperview];
	[self.window addSubview:[Colombia view]];
	[UIView commitAnimations];
}

//- (void)flipToFront:(NSString *)txt {
- (void)flipToFront {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[helper.view removeFromSuperview];
	[self.window addSubview:[navigationController view]];
	[UIView commitAnimations];
}

- (void)flipToFrontMexico {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[Mexico.view removeFromSuperview];
	[self.window addSubview:[navigationControllerMexico view]];
	[UIView commitAnimations];
}

- (void)flipToFrontColombia {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[Colombia.view removeFromSuperview];
	[self.window addSubview:[navigationControllerColombia view]];
	[UIView commitAnimations];
}

//- (void)flipLeftToBack:(NSString *)txt {
- (void)flipLeftToBack {
    
    //str= txt;
    //NSLog(@"dowbload this url : %@",str);
	//[UIView beginAnimations:nil context:NULL];
	//[UIView setAnimationDuration:2.0];
	//[UIView setAnimationTransition:UIViewAnimationTransitionNone forView:window cache:YES];
    
    
    /*if (txt != str)
    {
        [txt retain];
        [str release];
        str = txt;
    }*/
    
	[navigationController.view removeFromSuperview];
	[self.window addSubview:[helper view]];
	//[UIView commitAnimations];
    //[navigationController release];
	//navigationController = nil;
    
}

- (void)flipLeftToBackMexico {
    
	[navigationControllerMexico.view removeFromSuperview];
	[self.window addSubview:[Mexico view]];
    
}

- (void)flipLeftToBackColombia {
    
	[navigationControllerColombia.view removeFromSuperview];
	[self.window addSubview:[Colombia view]];
    
}

- (void)flipToFrontBuscar {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[helper.view removeFromSuperview];
	[self.window addSubview:[search view]];
	[UIView commitAnimations];
	//[search release];
	//search = nil;
}

- (void)flipToFrontBuscarMexico {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[Mexico.view removeFromSuperview];
	[self.window addSubview:[MexicoSearch view]];
	[UIView commitAnimations];
}

- (void)flipToFrontBuscarColombia {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[Colombia.view removeFromSuperview];
	[self.window addSubview:[ColombiaSearch view]];
	[UIView commitAnimations];
}

- (void)flipToBackBuscar {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[search.view removeFromSuperview];
	[self.window addSubview:[helper view]];
	[UIView commitAnimations];
}

- (void)flipToBackBuscarMexico {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[MexicoSearch.view removeFromSuperview];
	[self.window addSubview:[Mexico view]];
	[UIView commitAnimations];
}

- (void)flipToBackBuscarColombia {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[ColombiaSearch.view removeFromSuperview];
	[self.window addSubview:[Colombia view]];
	[UIView commitAnimations];
}

- (void)flipToFrontAyuda {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[helper.view removeFromSuperview];
	[self.window addSubview:[ayuda view]];
	[UIView commitAnimations];
	//[search release];
	//search = nil;
}

- (void)flipToFrontAyudaMexico {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[Mexico.view removeFromSuperview];
	[self.window addSubview:[MexicoAyuda view]];
	[UIView commitAnimations];
}

- (void)flipToFrontAyudaColombia {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:window cache:NO];
	[Colombia.view removeFromSuperview];
	[self.window addSubview:[ColombiaAyuda view]];
	[UIView commitAnimations];
}

- (void)flipToBackAyuda {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[ayuda.view removeFromSuperview];
	[self.window addSubview:[helper view]];
	[UIView commitAnimations];
}

- (void)flipToBackAyudaMexico {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[MexicoAyuda.view removeFromSuperview];
	[self.window addSubview:[Mexico view]];
	[UIView commitAnimations];
}

- (void)flipToBackAyudaColombia {
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:window cache:YES];
	[ColombiaAyuda.view removeFromSuperview];
	[self.window addSubview:[Colombia view]];
	[UIView commitAnimations];
}

- (void)flipToBackPaises {
	[navigationController.view removeFromSuperview];
	[self.window addSubview:[flag view]];
}

- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    
    //Save all the dirty coffee objects and free memory.
    //[self.flag makeObjectsPerformSelector:@selector(UpdateRecords)];
}


- (void)dealloc {
	[navigationController release];
	[window release];
    [viewController release];
    [tabbar release];
    [search release];
    [ayuda release];
    [helper release];
    [Mexico release];
    [navigationControllerMexico release];
    [MexicoSearch release];
    [MexicoAyuda release];
    [Colombia release];
    [navigationControllerColombia release];
    [ColombiaSearch release];
    [ColombiaAyuda release];
	[super dealloc];
}

@end
