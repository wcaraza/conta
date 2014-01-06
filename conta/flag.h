//
//  flag.h
//  conta
//
//  Created by Walter Caraza Barrera on 29/09/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <sqlite3.h>
/*@protocol paisSelected <NSObject>

-(void)selected:(NSInteger)amount;

@end*/

@interface flag : UIViewController <UIAlertViewDelegate>{

    //sqlite3 * db;
    //id<paisSelected> delegate;
    //IBOutlet UILabel *theLabel;
    //IBOutlet UIToolbar *toolbar;
    IBOutlet UIWebView *web;
    
}

//@property (nonatomic,retain) NSString *homeDir;
//@property (nonatomic,retain) NSFileManager *fileMgr;

@property (retain, nonatomic) IBOutlet UIButton *peru;
@property (retain, nonatomic) IBOutlet UIButton *mexico;
@property (retain, nonatomic) IBOutlet UIButton *colombia;
@property (nonatomic, retain) UIToolbar *toolbar;
//@property (retain, nonatomic) IBOutlet UILabel *version;
@property (retain, nonatomic) IBOutlet UIWebView *web;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *version;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *valorar;

- (IBAction)peru:(id)sender;
- (IBAction)mexico:(id)sender;
- (IBAction)colombia:(id)sender;
- (void)loadvalorar:(id)sender;

//@property(nonatomic,assign)id delegate;

//-(NSString *) GetDocumentDirectory;
//-(void)UpdateRecords:(NSString *)txt;
@end
