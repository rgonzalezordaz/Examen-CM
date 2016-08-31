//
//  GeoApi.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 28/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Coord.h"
#import "MainObject.h"

@interface ObjectResponse : NSObject
@property (nonatomic,strong) Coord *coord;
@property (nonatomic,strong) MainObject *main;
@property (nonatomic,strong) NSString *name;
@end
