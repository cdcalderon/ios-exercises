//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableString *stringResult = [[NSMutableString alloc] init];
    
    NSInteger lowerNumber = number < otherNumber ? number :otherNumber;
    NSInteger higherNumber = number > otherNumber ? number : otherNumber;
    for (NSInteger n = lowerNumber ; n >= lowerNumber && n <= higherNumber; n++ ){
        
       [stringResult appendString: [NSString stringWithFormat:@"%ld", n]];
        NSLog(@"");
    }
    
    return stringResult;
}

@end
