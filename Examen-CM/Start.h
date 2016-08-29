//
//  ViewController.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 26/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//
#import <GoogleMaps/GoogleMaps.h>
#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "ClimaViewController.h"

@interface Start : UIViewController <GMSMapViewDelegate>
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end

