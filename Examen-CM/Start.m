//
//  ViewController.m
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 26/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import "Start.h"
@import GoogleMaps;

@interface Start ()

@end

@implementation Start

{
    GMSMapView *mapView_;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:20.670000
                                                            longitude:-103.330002
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    mapView_.delegate = self;
    self.view = mapView_;
    
    // Creates a marker in the center of the map.


}

- (void)mapView:(GMSMapView *)mapView
didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
    NSLog(@"You tapped at %f,%f", coordinate.latitude, coordinate.longitude);
    Lat = coordinate.latitude;
    Long = coordinate.longitude;
    print(NSLog(@"La Latitud es : %f y la Longitud es : %f", Lat, Long));
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(Lat, Long);
    marker.map = mapView_;
    marker.title =@"Click to check weather";

}
-(BOOL) mapView:(GMSMapView *) mapView didTapMarker:(GMSMarker *)marker
{
    print(NSLog(@"Marker clicked"));
    Lat = marker.position.latitude;
    Long = marker.position.longitude;
    [self performSegueWithIdentifier:@"Clima" sender:self];
    return YES;
}


    // Do any additional setup after loading the view, typically from a nib.

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"Clima"]){
        ClimaViewController *ClimaController = [segue destinationViewController];
    }
}


@end
