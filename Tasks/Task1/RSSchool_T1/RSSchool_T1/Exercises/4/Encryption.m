#import "Encryption.h"

@implementation Encryption

// Complete the encryption function below.
- (NSString *)encryption:(NSString *)string {
    
    NSString *outputString=[NSString new];
    NSMutableArray *tempArray=[NSMutableArray new];
    
    double lenghtString=[string length];
    double rows=floor(sqrt(lenghtString));
    double columns=ceil(lenghtString/rows);
    
    
    if (columns-rows>1) {
        rows+=1;
        columns=ceil(lenghtString/rows);
    }
    
    for (int i=0; i<columns; i+=1) {
        
        NSMutableString *tempString = [NSMutableString new];
        
        for (int j=i; j<lenghtString; j+=columns) {
            
            [tempString appendString:[string substringWithRange:NSMakeRange(j, 1)]];
            
        }
        
        [tempArray addObject:tempString];
        
    }
    
    outputString=[tempArray componentsJoinedByString:@" "];
    
    return outputString;
    
}

@end
