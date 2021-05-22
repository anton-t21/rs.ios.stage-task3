#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    int n = 0;
    int arrayCount = (int)ratingArray.count;

    for (int i = 0; i < arrayCount - 2; i++){
        for (int j = i + 1; j < arrayCount - 1; j++){
            for (int k = j + 1; k <= arrayCount -1; k++) {
                int a = ratingArray[i].intValue;
                int b = ratingArray[j].intValue;
                int c = ratingArray[k].intValue;

                if ((a < b && b < c) || (a > b && b > c)){
                    n++;
                }
            }
        }
    }
    return n;
}

@end
