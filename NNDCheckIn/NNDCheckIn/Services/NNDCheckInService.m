
/*  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
 Author: Kian D.Rad
 Date:   August 3rd 2017
 ReadMe:
 */
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#import "NNDCheckInService.h"
#import "NNDCheckInBusinessRepository.h"

@interface NNDCheckInService()

@property (strong, nonatomic) NNDCheckInBusinessRepository *repository;

@end



@implementation NNDCheckInService :NSObject

- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}



- (instancetype)initWithDataModel {
    self = [super init];
    if (self) {
        _repository = [[NNDCheckInBusinessRepository alloc] init];

    }
    return self;
}



-(id)nndCheckInUIViewInitializer:(id)model{
    /*
     Author: Kian D.Rad
     Date: Auhust 15th 2017
     README: 

     model  =  UIView
     return =  UIView
     
     */



    @try {

        [_repository nndCheckInUIViewInitializer:model];
    }
    @catch (NSException *exception) {

        NSLog(@"%@", exception.reason);
    }
    @finally {

        NSLog(@"FINALLY\n");

        return nil;
    }


}

@end
