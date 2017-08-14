/*  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
 Author: Kian D.Rad
 Date:   August 3rd 2017
 ReadMe:
 */

#ifndef NNDCheckInModel_h
#define NNDCheckInModel_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

//#import "NNDCheckInController.h"
@interface NNDCheckInModel : NSObject

@property (strong, nonatomic) UIView* nndCheckInUIView;
@property (strong, nonatomic) UIButton* nndCheckInUIButton;
@property (assign, nonatomic) id nndCheckInUIButtonCallBackFunction;
// Do not need this becuase I actually initalize the controller. August 14th 2017 KDR
//@property (assign, nonatomic) NNDCheckInController* nndCheckInController;


@end

#endif /* NNDCheckInModel_h */
