//
//  NNDCheckIn.h
//  NNDCheckIn
//
//  Created by Kian Davoudi-Rad on 2017-07-31.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


//! Project version number for NNDCheckIn.
FOUNDATION_EXPORT double NNDCheckInVersionNumber;

//! Project version string for NNDCheckIn.
FOUNDATION_EXPORT const unsigned char NNDCheckInVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <NNDCheckIn/PublicHeader.h>


/*
 
 Author:    Kian D.Rad
 Date:      July 31st 2017
 ReadMe     This is the NND CheckIn screen. The follwoing componetns are required to be wired back to the mother project. 
            The mother project, requires a button, uiview, call back function for button and services.
 */

@interface NNDCheckIn : NSObject

@property(strong, nonatomic) UIButton   *nndCheckInUIButton;
@property(strong, nonatomic) UIView     *nndCheckInUIView;
@property(strong, nonatomic) id<id>     *nndCheckInUIButtonCallBackFuntion;
@property(strong, nonatomic) id<id>     *nndCheckInServices;


@end
