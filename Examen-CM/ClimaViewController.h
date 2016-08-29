//
//  ClimaViewController.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 28/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WebServices.h"
#import "Declarations.h"

@interface ClimaViewController : UIViewController
- (void)loadData;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityLoad;
@property (strong, nonatomic) IBOutlet UILabel *HumidityValue;
@property (strong, nonatomic) IBOutlet UILabel *TempValue;

@property (strong, nonatomic) IBOutlet UILabel *CityValue;

@property (strong, nonatomic) IBOutlet UILabel *PressureValue;
@property (strong, nonatomic) IBOutlet UIImageView *WeatherImage;

@end
