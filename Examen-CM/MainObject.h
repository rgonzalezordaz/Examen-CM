//
//  MainObject.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 28/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MainObject : NSObject
@property (nonatomic) float temp;
@property (nonatomic) float pressure;
@property (nonatomic) float humidity;
@property (nonatomic) float temp_min;
@property (nonatomic) float temp_max;
@property (nonatomic) float sea_level;
@property (nonatomic) float grnd_level;
@end
