#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    
    int diagonalDifference=0;
    int primaryDiagonalSum=0;
    int secondaryDiagonalSum=0;
    
    for (int i=0; i<array.count; i+=1) {
        
        NSString *tempString=[array objectAtIndex:i];
        NSArray *mArray;
        
        mArray=[tempString componentsSeparatedByString:@" "];
        
        primaryDiagonalSum+=[mArray[i] intValue];
        
    }
    
    for (int i=0; i<array.count; i+=1) {
        
        NSString *tempString=[array objectAtIndex:(array.count-1)-i];
        NSArray *mArray;
        
        mArray=[tempString componentsSeparatedByString:@" "];
        
        secondaryDiagonalSum+=[mArray[i] intValue];
        
    }
    
    diagonalDifference=primaryDiagonalSum-secondaryDiagonalSum;
    
    if (diagonalDifference<0) {
        diagonalDifference=-1*diagonalDifference;
    }
    
    return @(diagonalDifference);
}

@end
