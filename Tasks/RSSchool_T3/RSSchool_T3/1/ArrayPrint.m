#import "ArrayPrint.h"

@implementation NSArray (RSSchool_Extension_Name)

-(NSString*) print {
    
    NSInteger countElement=[self count];
    NSMutableArray *tempArray=[NSMutableArray new];
    
    for (int i=0; i<countElement; i+=1) {
        
        id memberOfArray=[self objectAtIndex:i];
        
        BOOL isKindOfNSNumber, isKindOfNSNull,  isKindOfNSArray, isKindOfNSString;
        
        isKindOfNSNumber=[memberOfArray isKindOfClass:[NSNumber class]];
        isKindOfNSNull=[memberOfArray isKindOfClass:[NSNull class]];
        isKindOfNSArray=[memberOfArray isKindOfClass:[NSArray class]];
        isKindOfNSString=[memberOfArray isKindOfClass:[NSString class]];
        
        
        if (isKindOfNSNumber) {
            [tempArray addObject:memberOfArray];
        } else if (isKindOfNSNull) {
            [tempArray addObject:@"null"];
        } else if (isKindOfNSString){
            [tempArray addObject:[NSString stringWithFormat:@"\"%@\"", memberOfArray]];
        } else if (isKindOfNSArray) {
            [tempArray addObject:[memberOfArray print]];
        } else {
            [tempArray addObject:@"unsupported"];
        }
    }
    
    return [NSString stringWithFormat:@"[%@]", [tempArray componentsJoinedByString:@","]];
}

@end
