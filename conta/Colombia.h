//
//  Colombia.h
//  conta
//
//  Created by Walter Caraza Barrera on 11/12/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Colombia : UIViewController

@property (retain, nonatomic) IBOutlet UIButton *cuentas;
@property (retain, nonatomic) IBOutlet UIButton *ayuda;
@property (retain, nonatomic) IBOutlet UIButton *buscar;


- (IBAction)cuentas:(id)sender;
- (IBAction)ayuda:(id)sender;
- (IBAction)buscar:(id)sender;
//- (void) doneSearching_Clicked:(id)sender;

@end
