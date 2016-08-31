//
//  ClimaViewController.m
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 28/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import "ClimaViewController.h"

@interface ClimaViewController ()

@end

@implementation ClimaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self qeueLoadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**********************************************************************************************/
#pragma mark - Task methods
/**********************************************************************************************/
- (void)qeueLoadData {
    [UIApplication sharedApplication].networkActivityIndicatorVisible   = YES;
    [self.activityLoad startAnimating];
    
    NSOperationQueue *queue         = [NSOperationQueue new];
    NSInvocationOperation *opGet    = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(loadData) object:nil];
    [queue addOperation:opGet];
    
    NSInvocationOperation *opDidGet = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(didLoadData) object:nil];
    [opDidGet addDependency:opGet];
    [queue addOperation:opDidGet];
}
//----------------------------------------------------------------------------------------------
- (void)loadData {
    NSString *latitud = [NSString stringWithFormat:@"%f", Lat];
    NSString *longitud = [NSString stringWithFormat:@"%f", Long];
    mjsonGeo                        = [WebServices getWeatherWithLatitude:latitud AndLongitude:longitud];
    print(NSLog(@"mjsonGeo  = %@",mjsonGeo))
}
- (void)didLoadData {
    dispatch_async(dispatch_get_main_queue(), ^{
        ObjectResponse *object          = [Parser parseGeoObject];
        Coord *coordObject              = object.coord;
        float lat                       = coordObject.lat;
        float lng                       = coordObject.lon;
        NSString *stName                = object.name;
        
        MainObject *mainObject          = object.main;
        float tempCelsius               = mainObject.temp - 273.15;
        if(tempCelsius <18){
            self.WeatherImage.image = [UIImage imageNamed:@"Frio.png"];
        } else if (tempCelsius >= 18){
            self.WeatherImage.image = [UIImage imageNamed:@"Soleado.png"];
        }
        
        self.TempValue.text          = [NSString stringWithFormat:@"%.1f", tempCelsius];
        self.TempValue.text          = [self.TempValue.text  stringByAppendingString:@" ºC"];
        self.PressureValue.text      = [NSString stringWithFormat:@"%f", mainObject.pressure];
        self.HumidityValue.text      = [NSString stringWithFormat:@"%f", mainObject.humidity];

        self.TempMin.text       = [NSString stringWithFormat:@"%.1f", mainObject.temp_min - 273.15];
        self.TempMin.text       = [self.TempMin.text  stringByAppendingString:@" ºC"];
        self.TempMax.text       = [NSString stringWithFormat:@"%.1f", mainObject.temp_max - 273.15];
        self.TempMax.text       = [self.TempMax.text  stringByAppendingString:@" ºC"];
        
        self.CityValue.text          = stName;
         
        print(NSLog(@"We are at %@ with latitude %f and longitude %f",stName, lat, lng))
        [UIApplication sharedApplication].networkActivityIndicatorVisible   = NO;
        [self.activityLoad stopAnimating];
    });
}

@end
