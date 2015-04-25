//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

/* Step 1: Create a buzz check method

Add a method called isBuzzed that takes an integer and returns a bool
The method should check to see if the integer is a multiple of 3
If the number is a multiple of 3 it should return true
If the number is not a multiple of 3 the method should check to see if the number contains the character 3
If the number contains the character three it should return true
Otherwise it should return false

Step 2: Create a fizz check method

Add a method called isFizzed that takes an integer and returns a bool
The method should check to see if the integer is a multiple of 5
If the number is a multiple of 5 it should return true
If the number is not a multiple of 5 the method should check to see if the number contains the character 5
If the number contains the character three it should return true
Otherwise it should return false

Step 3: Call FizzBuzz methods

In your didFinishLaunching method loop through numbers 1-100
For each integer call isBuzzed and isFizzed
If the integer isBuzzed but not isFizzed print "Buzz"
If the integer isFizzed but not isBuzzed print "Fizz"
If the integer isFizzed and isBuzzed print "FizzBuzz"
If the integer is not isFizzed and is not isBuzzed print the number

Completion

You should have printed numbers 1-100.
You shouldn't see any 3s or 5s in the list anywhere.
You could start by looking at 6, 9, 12 and see if they are buzzed
You could look at 5, 10, 25, 95 and see if they are fizzed
You could look at 15, 51, 90 and see if they are fizzbuzzed
Example Output 1-100:
1 2 Buzz 4 Fizz Buzz 7 8 Buzz Fizz 11 Buzz Buzz 14 FizzBuzz 16 17 Buzz 19 Fizz Buzz 22 Buzz Buzz Fizz 26 Buzz 28 29 FizzBuzz Buzz Buzz Buzz Buzz FizzBuzz Buzz Buzz Buzz Buzz Fizz 41 Buzz Buzz 44 FizzBuzz 46 47 Buzz 49 Fizz FizzBuzz Fizz FizzBuzz FizzBuzz Fizz Fizz FizzBuzz Fizz Fizz FizzBuzz 61 62 Buzz 64 Fizz Buzz 67 68 Buzz Fizz 71 Buzz Buzz 74 FizzBuzz 76 77 Buzz 79 Fizz Buzz 82 Buzz Buzz Fizz 86 Buzz 88 89 FizzBuzz 91 92 Buzz 94 Fizz Buzz 97 98 Buzz Fizz*/

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    for (int i=0; i<100; i++) {
        if(([self isBuzzed:i]) && ([self isFizzed:i] != YES)){
            NSLog(@"Buzz");
        } else if(([self isFizzed:i]) && ([self isBuzzed:i] != YES)){
            NSLog(@"Fizz");
        } else if(([self isBuzzed:i]) && ([self isFizzed:i])){
            NSLog(@"FizzBuzz");
        } else{
            NSLog(@"%d", i);
        }
    }
    return YES;
}

- (BOOL)isBuzzed:(int)argument;
{
    NSString *numConvString = [NSString stringWithFormat:@"%d", argument];
    
    if (argument % 3 == 0) {
        return YES;
    } else if ([numConvString rangeOfString:@"3"].location != NSNotFound)
       {
          return YES;
       } else {
          return NO;
       }
}


- (BOOL)isFizzed:(int)argument;
{
     NSString *numConvString = [NSString stringWithFormat:@"%d", argument];
    
    if (argument % 5 == 0) {
        return YES;
    } else if ([numConvString rangeOfString:@"5"].location != NSNotFound)
    {
        return YES;
    } else {
        return NO;
    }

    
}
@end
