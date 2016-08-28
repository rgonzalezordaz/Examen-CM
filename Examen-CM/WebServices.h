//
//  WebServices.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 27/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebServices : NSObject
+ (NSDictionary *)getWeatherWithLatitude:(NSString *)latitude AndLongitude:(NSString*)longitude;
+ (NSDictionary*) sendPost:(NSString*)postUrl forData:(NSString *)data andMode:(BOOL)mode;
@end
