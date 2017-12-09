//
//  main.m
//  Prog15.4
//
//  Created by admin on 12/7/17.
//  Copyright © 2017 admin. All rights reserved.
//

// Basic string operations


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        NSString *myString1 = @"This is string A";
        NSString *myString2 = @"This is string B";
        NSString *res;
        NSRange subRange;
        
        
        // Extract first 3 chars from string
        res = [myString1 substringFromIndex:3];
        NSLog(@"First 3 chars of myString1: %@",res);
        
        // Extract chars to end of string starting at index 5
        res =[myString1 substringFromIndex:5];
        NSLog(@"Chars from index 5 of myString1: %@",res);
        
        //  Extract chars from index 8 thourgh 13 (6 chars)
        res=[[myString1 substringFromIndex:8] substringFromIndex:6];
        NSLog(@"Chars from index 8 through 13: %@:",res);
        
        
        // An easier way to do the same thing
        res = [myString1 substringWithRange:NSMakeRange(8, 6)];
        NSLog(@"Chars from index 8 through 13: %@: ",res);
        
        // locate one string inside another
        
        subRange = [myString1 rangeOfString:@"String A"];
        NSLog(@"String is at index %lu, length is %lu", subRange.location,subRange.length);
        subRange = [myString1 rangeOfString:@"String B"];
        if(subRange.location== NSNotFound)
            NSLog(@"String not found");
        else
            NSLog(@"String is at index %lu, length %lu", subRange.location, subRange.length);
        
        
    }
    return 0;
}
