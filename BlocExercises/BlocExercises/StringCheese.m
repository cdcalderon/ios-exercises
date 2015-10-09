//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *returnString = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return returnString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        NSString *cheeseWithoutSuffix = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return cheeseWithoutSuffix;
    } else {
        return cheeseName;
    }
    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
   
    if (cheeseCount == 1 ){
        return [NSString stringWithFormat:@"%ld cheese", cheeseCount];
    } else {
        return [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
    }
}

@end
