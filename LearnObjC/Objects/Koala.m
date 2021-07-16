//
//  Koala.m
//  LearnObjC
//
//  Created by Arman Abkar on 7/12/21.
//

#import "Koala.h"

@implementation Koala

// Method Overriding
- (NSString *)talk:(NSString *)myName {
    NSString *response = [NSString stringWithFormat:@"Hello %@ says %@", myName, self.name];
    return response;
}

- (void)performTrick {
    NSLog(@"%@ performs a trick!wow", self.name);
}

- (void)lookCute {
    NSLog(@"%@ is cute!", self.name);
}

- (void)makeSound {
    NSLog(@"Koala don't make any sound!");
}

@end
