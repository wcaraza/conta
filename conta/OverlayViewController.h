//
//  OverlayViewController.h
//  TableView
//
//  Created by iPhone SDK Articles on 1/17/09.
//  Copyright www.iPhoneSDKArticles.com 2009.
//

#import <UIKit/UIKit.h>

@class RootViewController;
@class MexicoViewController;
@class ColombiaViewController;

@interface OverlayViewController : UIViewController {
    
	RootViewController *rvController;
    MexicoViewController *mxController;
    ColombiaViewController *coController;
}

@property (nonatomic, retain) RootViewController *rvController;
@property (nonatomic, retain) MexicoViewController *mxController;
@property (nonatomic, retain) ColombiaViewController *coController;
@end
