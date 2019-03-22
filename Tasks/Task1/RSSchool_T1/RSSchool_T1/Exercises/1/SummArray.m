#import "SummArray.h"

@implementation SummArray

// Complete the summArray function below.
- (NSNumber *)summArray:(NSArray *)array {
    
    int tempSumm=0;
    
    for (int index=0; index<=(array.count-1); index+=1) {
        tempSumm+=[array[index] intValue];
    }
    
    return @(tempSumm);
}

@end
