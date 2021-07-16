//
//  Koala.h
//  LearnObjC
//
//  Created by Arman Abkar on 7/12/21.
//

#import "Animal.h"
#import "BeautyContest.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal <BeautyContest>

-(NSString *) talk:(NSString *) myName;
-(void) performTrick;

@end

NS_ASSUME_NONNULL_END
