//
//  Animal.m
//  LearnObjC
//
//  Created by Arman Abkar on 7/12/21.
//

#import "Animal.h"
#import "Animal+Vet.h"

@implementation Animal

// Initializer
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"No Name!";
    }
    return self;
}

// Custom Initializer
- (instancetype) initWithName:(NSString *)defaultName
{
    self = [super init];
    if (self) {
        self.name = defaultName;
    }
    return self;
}

// Methods Implementation ( defined in header .h file)

- (void) getInfo {
    NSLog(@"Some random info...");
    [self getExamResults];
}

- (NSString *)talk:(NSString *)myName {
    NSString *response = [NSString stringWithFormat:@"Hello %@", myName];
    return  response;
}

- (int)getSum:(int)num1 nestNumber:(int)num2 {
    return  num1 + num2;
}

- (void)makeSound {
    NSLog(@"Grrrrrr!");
}

@end
