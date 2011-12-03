//
//  geoAppDelegate.h
//  geo
//
//  Created by Hector Veiga on 11/29/11.
//  Please check README file.
//

#import <UIKit/UIKit.h>


@class geoViewController;

@interface geoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    geoViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet geoViewController *viewController;

@end

