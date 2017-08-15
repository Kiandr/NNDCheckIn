
/*  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
 Author: Kian D.Rad
 Date:   August 3rd 2017
 ReadMe:
 */
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@protocol NNDCheckInServiceProtocolDelegate <NSObject>


@end

@interface NNDCheckInService : NSObject<NNDCheckInServiceProtocolDelegate>

@property (strong, nonatomic) id<NNDCheckInServiceProtocolDelegate> delegate;

- (instancetype)initWithDataModel;

-(id)nndCheckInUIViewInitializer:(id)model;

@end


