//
//  OCMapperConfig.m
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 27/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import "OCMapperConfig.h"
#import "OCMapper.h"
#import "Declarations.h"

@implementation OCMapperConfig

+(void) Configure{
    InCodeMappingProvider *inCodeMappingProvider = [[InCodeMappingProvider alloc] init];
    CommonLoggingProvider *commonLoggingProvider = [[CommonLoggingProvider alloc] initWithLogLevel:LogLevelError];
    
    [[ObjectMapper sharedInstance] setMappingProvider:inCodeMappingProvider];
    [[ObjectMapper sharedInstance] setLoggingProvider:commonLoggingProvider];
    
    /******************* Customized objects **********************/
    
}
@end
