#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    
    int tempSumm=0;
    
    for (int index=0; index<array.count; index+=1) {
        tempSumm+=[array[index] intValue];
    }
    
    /* вариант 2
    найдено в сети
     
    NSNumber *mySum = [array valueForKeyPath: @"@sum.self"];
    return mySum;
    
    */
    
    return @(tempSumm);
}

@end
