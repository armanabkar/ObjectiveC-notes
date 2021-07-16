//
//  Animal.h
//  LearnObjC
//
//  Created by Arman Abkar on 7/12/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property NSString *name;
@property NSString *favFood;
@property NSString *sound;

-(instancetype) initWithName:(NSString*) defaultName;
-(void) getInfo;
-(NSString *) talk: (NSString *) myName;
-(int) getSum: (int) num1
   nestNumber: (int) num2;
-(void) makeSound;
@end

NS_ASSUME_NONNULL_END
