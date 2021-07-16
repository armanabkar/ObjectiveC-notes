//
//  main.m
//  LearnObjC
//
//  Created by Arman Abkar on 7/12/21.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Animal+Exam.h"
#import "Koala.h"
#include <math.h>
#include <float.h>

// Structs
struct SuperHero {
    char *realName;
    char *superName;
    float height;
    float weight;
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        
        // Loops
        for (int i = 0; i < 10; i++) {
            printf("arg %d : %s\n", i, argv[i]);
        }
        int j = 1;
        while (j <= 3) {
            NSLog(@"j: %d\n", j);
            j++;
        }
        
        // Bools and Control Flows
        int age = 19;
        bool isElementary = ((age >= 12) && (age <= 13));
        bool isHighSchool = (age < 18) ? 1 : 0;
        if (!isElementary && !isHighSchool) {
            NSLog(@"you are allowed!");
        }
        
        NSLog(@"3 / 2 = %f\n", 3 / (float) 2);
        
        // Pointers
        NSLog(@"j location: %p\n", &j);
        int *newJ = &j;
        *newJ = 10;
        NSLog(@"newJ location: %p\n", &newJ);
        
        // Structs
        struct SuperHero arman;
        arman.realName = "Arman";
        arman.superName = "King Abkar";
        arman.height = 6.25;
        arman.weight = 235;
        NSLog(@"%s is the hero named %s. He is %.2f ft tall and weighs %.1f lbs\n", arman.realName,arman.superName,arman.height,arman.weight);
        
        // Objective-C Strings
        NSString *quote = @"Here we go again...";
        NSLog(@"Size of String: %d", (int)[quote length]);
        NSLog(@"Char at index 2: %c", [quote characterAtIndex:2]);
        char *name = "Arman";
        NSString *myName = [NSString stringWithFormat:@"- %s", name];
        BOOL isStringEqual = [quote isEqualToString:myName];
        NSLog(@"Are strings equal: %d\n", isStringEqual);
        const char *uCString = [[myName uppercaseString] UTF8String];
        NSLog(@"%s\n", uCString);
        NSString *wholeString = [quote stringByAppendingString:myName];
        NSRange searchResult = [wholeString rangeOfString:@"Arman"];
        if (searchResult.location == NSNotFound) {
            NSLog(@"String not found");
        } else {
            NSLog(@"Arman is at index %lu and is %lu long\n", searchResult.location, searchResult.length);
        }
        NSRange range = NSMakeRange(2, 5);
        const char *newQuote = [[wholeString stringByReplacingCharactersInRange:range withString:@"Sogol"]UTF8String];
        NSLog(@"%s", newQuote);
        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
        [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];
        [groceryList deleteCharactersInRange:NSMakeRange(0, 3)];
        [groceryList insertString:@", Apple" atIndex:5];
        NSLog(@"groceryList: %@", groceryList);
        
        // Objective-C Arrays
        NSArray *officeSupplies = @[@"Apple", @"Computer"];
        NSLog(@"First: %@", officeSupplies[0]);
        BOOL containsItem = [officeSupplies containsObject:@"Apple"];
        NSLog(@"office contains apple? %d", containsItem);
        NSLog(@"Total: %d", (int)[officeSupplies count]);
        NSLog(@"index of computer: %lu", (unsigned long)[officeSupplies indexOfObject:@"Computer"]);
        NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:4];
        [heroes addObject:@"superman1"];
        [heroes addObject:@"invenciable"];
        [heroes addObject:@"spider man"];
        [heroes addObject:@"superman2"];
        [heroes removeObject:@"superman1"];
        for (int i = 0; i < [heroes count]; i++) {
            NSLog(@"%@", heroes[i]);
        }
        
        // Objective-C Dictionaries
        NSDictionary *dict = @{ @"firstName" : @"Arman", @"lastName" : @"Abkar"};
        NSLog(@"Hi! I'm %@ %@", [dict valueForKey:@"firstName"], [dict valueForKey:@"lastName"]);
        NSLog(@"Total: %d", (int)[dict count]);
        NSMutableDictionary *mutableDict = [[NSMutableDictionary alloc] init];
        [mutableDict setValue:@"Arman" forKey:@"first"];
        [mutableDict setValue:@"Abkar" forKey:@"last"];
        [mutableDict setValue:@"22" forKey:@"age"];
        [mutableDict setValue:@"Los Angeles, CA" forKey:@"location"];
        NSLog(@"%@ %@ %@ years old from %@", [mutableDict valueForKey:@"first"],[mutableDict valueForKey:@"last"],[mutableDict valueForKey:@"age"],[mutableDict valueForKey:@"location"]);
        
        // Objective-C Objects
        Animal *dog = [[Animal alloc]init];
        [dog getInfo];
        [dog setName:@"Jessie"];
        NSLog(@"Dogs name is %@", [dog name]);
        Animal *cat = [[Animal alloc]initWithName:@"Lucy"];
        NSLog(@"Cats name is %@", [cat name]);
        NSLog(@"3 + 5 = %d", [dog getSum:3 nestNumber:5]);
        NSLog(@"%@", [cat talk:@"Sogol!"]);
        Koala *rex = [[Koala alloc]initWithName:@"Rex"];
        NSLog(@"%@", [rex talk:@"Arman"]);
        NSLog(@"Did %@ receive shots: %d", rex.name, [rex checkedByVet]);
        [rex getShots];
        [dog getInfo];
        [rex lookCute];
        
        // Anonymous functions
        float (^getArea) (float height, float width);
        getArea = ^float(float width, float height) {
            return width * height;
        };
        NSLog(@"Area of 3 width and 50 height: %.1f", getArea(3,50));
        
        // Enums
        enum Ratings {
            Poor = 1, Ok = 2, Great = 5
        };
        enum Ratings matrixRating = Great;
        NSLog(@"Matrix %u", matrixRating);
        
        [dog makeSound];
        [rex makeSound];
    }
    return 0;
}

// Functions
void convertData(char *name, float height, float weight) {
    height = height * 12 * 2.54;
    weight = weight * .453592;
    NSLog(@"%s is %.1f cms tall and weighs %.2f kg\n", name, height, weight);
}
