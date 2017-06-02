//
//  Controller.m
//  WordPrinter
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Controller.h"

@implementation Controller

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)text {
    
    if ([text hasPrefix:@"A"]) {
        return 2;
    } else if ([text hasSuffix:@"?"]) {
        return 0;
    } else {
        return 1;
    }
}

-(int)printer:(Printer *)printer addStar:(NSString *)text{
    
    if ([text hasPrefix:@"A"]) {
        return 1;
    } else if ([text hasSuffix:@"?"]) {
        return 2;
    } else {
    return 3;
    }
}

@end
