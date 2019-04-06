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


-(NSString*) arabicFromRoman:(NSString *)romanString {
    
    NSDictionary *romanArabicDictionary=@{ @"M":@(1000),
                                           @"CM":@(900),
                                           @"DCCC":@(800),
                                           @"DCC":@(700),
                                           @"DC":@(600),
                                           @"D":@(500),
                                           @"CD":@(400),
                                           @"CCC":@(300),
                                           @"CC":@(200),
                                           @"C":@(100),
                                           @"XC":@(90),
                                           @"LXXX":@(80),
                                           @"LXX":@(70),
                                           @"LX":@(60),
                                           @"L":@(50),
                                           @"XL":@(40),
                                           @"XXX":@(30),
                                           @"XX":@(20),
                                           @"X":@(10),
                                           @"IX":@(9),
                                           @"VIII":@(8),
                                           @"VII":@(7),
                                           @"VI":@(6),
                                           @"V":@(5),
                                           @"IV":@(4),
                                           @"III":@(3),
                                           @"II":@(2),
                                           @"I":@(1)};
    
    int lenght=(int)[romanString length];
    int resultSum=0;
    
    for (int i=0; i<=lenght-1; i+=1) {
        
        NSMutableString *tempString=[[NSMutableString alloc]init];
        
        for (int j=i; j<=lenght-1; j+=1) {
            
            int tempSum;
            [tempString appendFormat:@"%c",[romanString characterAtIndex:j]];
            NSMutableString *key=[[NSMutableString alloc]initWithString:tempString];
            
            
            if ([romanArabicDictionary objectForKey:key]) {
                
                int arabicValueInDictionary=0;
                arabicValueInDictionary=[[romanArabicDictionary objectForKey:key]intValue];
                tempSum=arabicValueInDictionary;
                
                if (j==lenght-1) {
                    resultSum+=tempSum;
                    i=j;
                }
                
            } else {
                i=j-1;
                resultSum+=tempSum;
                break;
            }
            
        }
        
        [tempString release];
    }
    
    return [NSString stringWithFormat:@"%i",resultSum];
}



@end
