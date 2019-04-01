#import "RomanTranslator.h"

@implementation RomanTranslator
// your code here
-(NSString*) romanFromArabic:(NSString *)arabicString {
    
    NSMutableString *resultString=[[NSMutableString alloc]init];
    NSDictionary *arabicRomanDictionary=[[NSDictionary alloc]initWithObjectsAndKeys:
                                         @"M",[NSNumber numberWithInt:1000],
                                         @"CM",[NSNumber numberWithInt:900],
                                         @"DCCC",[NSNumber numberWithInt:800],
                                         @"DCC", [NSNumber numberWithInt:700],
                                         @"DC", [NSNumber numberWithInt:600],
                                         @"D",[NSNumber numberWithInt:500],
                                         @"CD", [NSNumber numberWithInt:400],
                                         @"CCC", [NSNumber numberWithInt:300],
                                         @"CC",[NSNumber numberWithInt:200],
                                         @"C",[NSNumber numberWithInt:100],
                                         @"XC",[NSNumber numberWithInt:90],
                                         @"LXXX",[NSNumber numberWithInt:80],
                                         @"LXX", [NSNumber numberWithInt:70],
                                         @"LX",[NSNumber numberWithInt:60],
                                         @"L",[NSNumber numberWithInt:50],
                                         @"XL", [NSNumber numberWithInt:40],
                                         @"XXX",[NSNumber numberWithInt:30],
                                         @"XX",[NSNumber numberWithInt:20],
                                         @"X",[NSNumber numberWithInt:10],
                                         @"IX", [NSNumber numberWithInt:9],
                                         @"VIII",[NSNumber numberWithInt:8],
                                         @"VII",[NSNumber numberWithInt:7],
                                         @"VI",[NSNumber numberWithInt:6],
                                         @"V",[NSNumber numberWithInt:5],
                                         @"IV",[NSNumber numberWithInt:4],
                                         @"III",[NSNumber numberWithInt:3],
                                         @"II",[NSNumber numberWithInt:2],
                                         @"I",[NSNumber numberWithInt:1],
                                         nil];
    
    
    double x, key;
    double mutableArabicValue=[arabicString intValue];
    
    for (int i=(int)[arabicString length]-1; i>=0; i-=1) {
        x=mutableArabicValue/pow(10, i);
        key=(int)x*(pow(10, i));
        mutableArabicValue=(x*pow(10, i))-key;
        [resultString appendString:[arabicRomanDictionary objectForKey:@(key)]];
    }
    
    return resultString;
    
}

/*
-(NSString*) arabicFromRoman:(NSString *)romanString {
    
}
*/
@end
