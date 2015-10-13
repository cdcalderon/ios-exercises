//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return [NSNumber numberWithLong:([number longValue] * 2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    
    for (NSInteger i = number; i <= otherNumber; i++) {
        [resultArray addObject: [NSNumber numberWithLong:(long)i]];
    }
    return [resultArray copy];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSMutableArray *numbers = [arrayOfNumbers mutableCopy];
    
    NSNumber *min = [numbers valueForKeyPath:@"@min.intValue"];
    
    return [min longValue];
}

@end
