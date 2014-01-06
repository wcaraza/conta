//
//  helper.h
//  conta
//
//  Created by Walter Caraza Barrera on 15/09/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface helper : UIViewController{
    
}

@property (retain, nonatomic) IBOutlet UIButton *cuentas;
@property (retain, nonatomic) IBOutlet UIButton *ayuda;
@property (retain, nonatomic) IBOutlet UIButton *buscar;


- (IBAction)cuentas:(id)sender;
- (IBAction)ayuda:(id)sender;
- (IBAction)buscar:(id)sender;
//- (void) doneSearching_Clicked:(id)sender;
//- (void) doneMenu_Clicked;

@end
