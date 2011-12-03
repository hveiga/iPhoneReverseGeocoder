//
//  geoViewController.m
//  geo
//
//  Created by Hector Veiga on 11/29/11.
//  Please check README file.
//

#import "geoViewController.h"

@implementation geoViewController

@synthesize address,lat,lon, navBar;


-(CLLocationCoordinate2D) addressLocation:(NSString *)input {
    NSString *urlString = [NSString stringWithFormat:@"http://maps.google.com/maps/geo?q=%@&output=csv", 
						   [input stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSString *locationString = [NSString stringWithContentsOfURL:[NSURL URLWithString:urlString]];
    NSArray *listItems = [locationString componentsSeparatedByString:@","];
	
    double latitude = 0.0;
    double longitude = 0.0;
	
    if([listItems count] >= 4 && [[listItems objectAtIndex:0] isEqualToString:@"200"]) {
        latitude = [[listItems objectAtIndex:2] doubleValue];
        longitude = [[listItems objectAtIndex:3] doubleValue];
    }
    else {
		//Show error
    }
    CLLocationCoordinate2D location;
    location.latitude = latitude;
    location.longitude = longitude;
    return location;
}

- (IBAction)hideKeyboard:(id)sender {
	[(UIView *)sender resignFirstResponder];
	[address resignFirstResponder];
}


- (void)viewDidLoad {
    [super viewDidLoad];
	lat.text = @"";
	lon.text = @"";
}

-(IBAction) getLatLon {
	CLLocationCoordinate2D location = [self addressLocation:address.text];
	lat.text = [NSString stringWithFormat:@"%lf", location.latitude];
	lon.text = [NSString stringWithFormat:@"%lf", location.longitude];
	[self hideKeyboard:nil];
	
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
}


- (void)dealloc {
    [super dealloc];
}

@end
