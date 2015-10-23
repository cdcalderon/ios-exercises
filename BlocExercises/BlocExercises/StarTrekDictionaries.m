//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favDrinks =[[NSMutableArray alloc]init];
    
    for(NSDictionary *character in charactersArray){
        if(character != nil && [character isKindOfClass:[NSDictionary class]]){
            [favDrinks addObject: character[@"favorite drink"]];
        }
    }
    return [favDrinks copy];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSMutableDictionary *tempCharacterDictionary = [characterDictionary mutableCopy];
    id quote = tempCharacterDictionary[@"quote"];
    if(quote == nil ||
       ![quote isKindOfClass:[NSString class]] ||
       ([quote isKindOfClass:[NSString class]] && !([quote length] > 0))){
        [tempCharacterDictionary setObject:@"default quote" forKey:@"quote"];
    }
    
    return [tempCharacterDictionary copy];
}

@end
