#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
    NSString *result = @"";
    NSString *firstStringtLetter = @"";
    NSString *secondStringtLetter = @"";

    NSString *stringOne = string1;
    NSString *stringTwo = string2;


    int firstStringLength = (int)[stringOne length];
    int secondStringLength = (int)[stringTwo length];

    while (firstStringLength != 0 && secondStringLength != 0) {
        firstStringLength = (int)[stringOne length];
        secondStringLength = (int)[stringTwo length];
        if (firstStringLength != 0){
            firstStringtLetter = [stringOne substringToIndex:1];
        }
        if (secondStringLength != 0) {
            secondStringtLetter = [stringTwo substringToIndex:1];
        }
        if (firstStringLength != 0 && secondStringLength != 0) {
            if ([stringTwo characterAtIndex:0] >= [stringOne characterAtIndex:0]) {
                result = [result stringByAppendingString:firstStringtLetter];
                stringOne = [stringOne substringFromIndex:1];
            } else {
                result = [result stringByAppendingString:secondStringtLetter];
                stringTwo = [stringTwo substringFromIndex:1];
            }
        } else if (firstStringLength != 0) {
            result = [result stringByAppendingString:stringOne];
            break;
        } else {
            result = [result stringByAppendingString:stringTwo];
            break;
        }
    }
    return result;
}

@end
