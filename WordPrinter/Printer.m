//
//  Printer.m
//  WordPrinter
//
//  Created by Kevin Cleathero on 2017-06-01.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Printer.h"

@interface Printer ()

@property (nonatomic, strong) NSString *word;

@end


@implementation Printer

//- (instancetype)initWithWord:(NSString *)word
//{
//    self = [super init];
//    if (self) {
//        _word = word;
//    }
//    return self;
//}

-(void)printWord:(NSString *)word{
    
    //fetch number of times to print from controlle/wonky via delegate
    
    int timesToPrint = [self.delegate printer:self numberOfTimesToPrint:self.word];
    
    NSString *formatString;
    formatString = [self printStar:word];
    
    for(int i = 0; i <= timesToPrint; i++){
        NSLog(@"the word is: %@", formatString);
    }
}

-(NSString *)printStar:(NSString *)word{
    
    int displayStar = [self.delegate printer:self addStar:word];
    
    switch (displayStar) {
        case 1:
            return [word stringByAppendingString:@"✮"];
            break;
        case 2:{
            NSString *responseString;
            return responseString = [NSString stringWithFormat:@"✮%@", word];
            }
            break;
        case 3:
            return word;
            break;
        
        default:
            break;
    }
    return word;
}

@end
