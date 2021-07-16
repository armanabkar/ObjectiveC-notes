//
//  Animal+Exam.m
//  LearnObjC
//
//  Created by Arman Abkar on 7/12/21.
//

#import "Animal+Exam.h"

@implementation Animal (Exam)

- (BOOL)checkedByVet {
    return 1;
}

- (void)getShots {
    NSLog(@"%@ got its shots", self.name);
}

@end
