//
//  Printer.h
//  WordPrinter
//
//  Created by Kevin Cleathero on 2017-06-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Printer; //this resolves the method complaint below
@protocol PrinterDelegate <NSObject>

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)word;
-(int)printer:(Printer *)printer addStar:(NSString *)word;

@end


@interface Printer : NSObject

@property (nonatomic, weak) id<PrinterDelegate> delegate;

-(void)printWord:(NSString *)word;

-(NSString *)printStar:(NSString *)word;
//- (instancetype)initWithWord:(NSString *)word;

@end
