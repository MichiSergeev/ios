#import "KidnapperNote.h"

@implementation KidnapperNote
// your code here

-(BOOL) checkMagazine:(NSString *)magaine note:(NSString *)note {
    
    int hit=0;
    NSMutableArray *noteArray=[NSMutableArray new];
    NSMutableArray *magaineArray=[NSMutableArray new];
    noteArray=[[note lowercaseString] componentsSeparatedByString:@" "];
    magaineArray=[[magaine lowercaseString] componentsSeparatedByString:@" "];
    
    for (int i=0; i<noteArray.count; i+=1) {
        for (int j=0; j<magaineArray.count; j+=1) {
            if ([noteArray[i] isEqualToString:magaineArray[j]]) {
                hit+=1;
                [magaineArray removeObjectAtIndex:j];
                break;
            }
        }
    }
    
    return hit==noteArray.count ? YES:NO;
}

@end
