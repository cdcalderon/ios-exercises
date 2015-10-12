//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
        return [characterString componentsSeparatedByString:@";"];
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSSortDescriptor *sortAscending = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    NSMutableArray *tempArr = [characterArray mutableCopy];
    [tempArr sortUsingDescriptors:@[sortAscending]];
    return [tempArr copy]; // NOTE: As Jerry about best practice about returning NSArray From NSMutable Array- since NSMutableArray subclass NSArray
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *tempArray = [characterArray mutableCopy];
    NSPredicate *isWorfContainedInArray = [NSPredicate predicateWithFormat:@"SELF CONTAINS 'Worf'"];
    [tempArray filterUsingPredicate: isWorfContainedInArray];
    return [tempArray count] >= 1;
}

@end
