//
//  WonkyController.m
//  WordPrinter
//
//  Created by Cory Alder on 2016-05-05.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "WonkyController.h"

@implementation WonkyController

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)text {
    return 10;
}

-(int)printer:(Printer *)printer addStar:(NSString *)text{
    
    if ([text hasPrefix:@"A"]) {
        return 2;
    } else if ([text hasSuffix:@"?"]) {
        return 3;
    } else {
        return 2;
    }
}

@end
