
/*  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
 Author: Kian D.Rad
 Date:   August 3rd 2017
 ReadMe:
 */

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NNDCheckInBusinessRepository.h"
#import "UiViewSizesDatamodel.h"

@interface NNDCheckInBusinessRepository()
@property (strong, nonatomic) UiViewSizesDatamodel *sizes;

@end

@implementation NNDCheckInBusinessRepository : NSObject 

- (instancetype)init {
    self = [super init];
    if (self) {

        _sizes = [[UiViewSizesDatamodel alloc] initDefaultModelForNNDCheckInProject];
    }
    return self;
}




-(NNDCheckInModel*)nndCheckInUIViewInitializer:(NNDCheckInModel*)model{

    /*
     Author: Kian D.Rad
     Date: Auhust 15th 2017
     README:

     model  =  UIView
     return =  UIView

     */

    // BUILD THE UIVIEW
    // GO TO DATABASE AND BUILD THE PAITIENT DATA MODEL
    @try {

        // 1- build the clinet data model, this contians start date, end date, time, and first name and last name
        // 2- build the checkin button, this has a status, on and off, deponds on the exisitng machine time, if already checked in or not
        // 3- status bar, this should demostrate status of the visit, also two confirmation number for check int and check out

        // Until I manage to integrate the models as generic items i use ID and this is the model
        /*
         //#import "NNDCheckInController.h"
         @interface NNDCheckInModel : NSObject

         @property (strong, nonatomic) UIView* nndCheckInUIView;
         @property (strong, nonatomic) UIButton* nndCheckInUIButton;
         @property (assign, nonatomic) id nndCheckInUIButtonCallBackFunction;
         // Do not need this becuase I actually initalize the controller. August 14th 2017 KDR
         //@property (assign, nonatomic) NNDCheckInController* nndCheckInController;

         
         // CheckInScreen UIVIew
         _checkInUIViewModelFrameOriginex = _mainPewviewScreenUIViewFrameOriginex;
         _checkInUIViewModelFrameOriginey = _mainPewviewScreenUIViewFrameOriginey;
         _checkInUIViewModelFrameSizeHeight = _mainPewviewScreenUIViewFrameSizeHeight;
         _checkInUIViewModelFrameSizeWidth = _mainPewviewScreenUIViewFrameSizeWidth;
         _checkIUIViewModelBackGroundColor = [UIColor clearColor];


         */


        // UIView - sliding height button
        model.nndCheckInUIView = [[UIView alloc]initWithFrame:CGRectMake(_sizes.checkInUIViewModelFrameOriginex, _sizes.checkInUIViewModelFrameOriginey, _sizes.checkInUIViewModelFrameSizeWidth, _sizes.checkInUIViewModelFrameSizeHeight)];

        UIView *logoSpace = [[UIView alloc]initWithFrame:CGRectMake(_sizes.nndCheckInlogoSpaceFrameOriginex, _sizes.nndCheckInlogoSpaceFrameOriginey, _sizes.nndCheckInlogoSpaceFrameSizeWidth, _sizes.nndCheckInlogoSpaceFrameSizeHeight)];
        logoSpace.backgroundColor = _sizes.nndCheckInlogoSpaceBackGroundColor;

        UIView *ClientDataSpace = [[UIView alloc]initWithFrame:CGRectMake(_sizes.nndClientDataSpaceFrameOriginex, _sizes.nndClientDataSpaceFrameOriginey, _sizes.nndClientDataSpaceFrameSizeWidth, _sizes.nndClientDataSpaceFrameSizeHeight)];
        ClientDataSpace.backgroundColor = _sizes.nndClientDataSpaceBackGroundColor;




        // _checkInButtonUIViewModelFrameOriginex
        UIView *CheckInButtonSpace = [[UIView alloc]initWithFrame:CGRectMake(_sizes.checkInButtonUIViewModelFrameOriginex, _sizes.checkInButtonUIViewModelFrameOriginey, _sizes.checkInButtonUIViewModelFrameSizeWidth, _sizes.checkInButtonUIViewModelFrameSizeHeight)];
        CheckInButtonSpace.backgroundColor = _sizes.checkInButtonUIViewModelBackGroundColor;

    UIView *StatusSpace;
        UIView *CheckInConfirmationNumberSpace;
        UIView *CheckOutConfirmationNumberSpace;
        UIView *ErroStringSpace;


        [model.nndCheckInUIView addSubview:logoSpace];
        [model.nndCheckInUIView addSubview:ClientDataSpace];
        [model.nndCheckInUIView addSubview:CheckInButtonSpace];
        [model.nndCheckInUIView addSubview:StatusSpace];
        [model.nndCheckInUIView addSubview:CheckInConfirmationNumberSpace];
        [model.nndCheckInUIView addSubview:CheckOutConfirmationNumberSpace];
        [model.nndCheckInUIView addSubview:ErroStringSpace];

        NSLog(@" NNDCheckINUIVIew has been successfully built ");

    }
    @catch (NSException *exception) {

        NSLog(@"%@", exception.reason);
    }
    @finally {

        NSLog(@"FINALLY\n");

        return nil;
    }
    

    


    return model;
}



@end
