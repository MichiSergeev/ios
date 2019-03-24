#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    
    for (int index=0; index<26; index+=1) {
        
        NSString *abc=@"abcdefghijklmnopqrstuvwxyz";
        char temp;
        temp=[abc characterAtIndex:index];
        NSString *tempString=[NSString stringWithFormat:@"%c", temp];
        NSString *stringInputLowerCase=[string lowercaseString];
        
        if ([stringInputLowerCase containsString:tempString]==0) {
            return 0;
        }
        
    }
    
    
    return 1;
}

@end
