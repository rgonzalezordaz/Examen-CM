//
//  Declarations.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 27/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBJson.h"
#import "ObjectMapper.h"
#import "ObjectResponse.h"
#import "Coord.h"
#import "MainObject.h"
#import "Parser.h"

#define nDebugEnable        1
#define print(x)            if(nDebugEnable){(x);}

extern NSDictionary         *mjsonGeo;
extern float Lat, Long;

@interface Declarations : NSObject

@end
