//
//  geoViewController.h
//  geo
//
//  Created by Hector Veiga on 11/29/11.
//  Please check README file.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface geoViewController : UIViewController {
	
	IBOutlet UITextField *address;
	IBOutlet UILabel *lat;
	IBOutlet UILabel *lon;
	IBOutlet UINavigationBar *navBar;

}

@property (nonatomic, retain) IBOutlet UITextField *address;
@property (nonatomic, retain) IBOutlet UILabel *lat;
@property (nonatomic, retain) IBOutlet UILabel *lon;
@property (nonatomic, retain) IBOutlet UINavigationBar *navBar;

-(IBAction)getLatLon;
-(IBAction)hideKeyboard:(id)sender;
-(CLLocationCoordinate2D) addressLocation:(NSString *)input;

@end

