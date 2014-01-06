//
//  AppDelegate.h
//  conta
//
//  Created by Walter Caraza Barrera on 12/09/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : NSObject <UIApplicationDelegate>{
    
    UIWindow *window;
    UINavigationController *navigationController;
    AppDelegate *viewController;
    UIImageView *splashView;
    UITabBarController *tabBarController;
    UINavigationController *helper;
    UINavigationController *flag;
    UINavigationController *search;
    UINavigationController *ayuda;
    NSString *str;
    UINavigationController *Mexico;
    UINavigationController *navigationControllerMexico;
    UINavigationController *MexicoSearch;
    UINavigationController *MexicoAyuda;
    
}

- (void)flipToBack;
- (void)flipToBackMexico;
- (void)flipToBackColombia;
//- (void)flipToFront:(NSString *)txt;
- (void)flipToFront;
- (void)flipToFrontMexico;
- (void)flipToFrontColombia;
- (void)flipToFrontBuscar;
- (void)flipToFrontBuscarMexico;
- (void)flipToFrontBuscarColombia;
- (void)flipToBackBuscar;
- (void)flipToBackBuscarMexico;
- (void)flipToBackBuscarColombia;
- (void)flipToFrontAyuda;
- (void)flipToFrontAyudaMexico;
- (void)flipToFrontAyudaColombia;
- (void)flipToBackAyuda;
- (void)flipToBackAyudaMexico;
- (void)flipToBackAyudaColombia;
- (void)flipToBackPaises;
//- (void)flipLeftToBack:(NSString *)txt;
- (void)flipLeftToBack;
- (void)flipLeftToBackMexico;
- (void)flipLeftToBackColombia;
//-(NSString *) str;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (retain, nonatomic) IBOutlet UITabBarController *tabbar;
@property (retain, nonatomic) IBOutlet UINavigationController *flag;
@property (retain, nonatomic) IBOutlet UINavigationController *search;
@property (retain, nonatomic) IBOutlet UINavigationController *ayuda;
@property (retain, nonatomic) IBOutlet UINavigationController *helper;
//@property (nonatomic,retain) NSString *str;
@property (retain, nonatomic) IBOutlet UINavigationController *Mexico;
@property (retain, nonatomic) IBOutlet UINavigationController *navigationControllerMexico;
@property (retain, nonatomic) IBOutlet UINavigationController *MexicoSearch;
@property (retain, nonatomic) IBOutlet UINavigationController *MexicoAyuda;

@property (retain, nonatomic) IBOutlet UINavigationController *Colombia;
@property (retain, nonatomic) IBOutlet UINavigationController *navigationControllerColombia;
@property (retain, nonatomic) IBOutlet UINavigationController *ColombiaSearch;
@property (retain, nonatomic) IBOutlet UINavigationController *ColombiaAyuda;

@end


