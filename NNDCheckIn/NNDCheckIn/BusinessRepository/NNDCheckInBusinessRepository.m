
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

        _sizes = [[UiViewSizesDatamodel alloc] initDefaultModel];
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

         */


        // UIView - sliding height button 
        model.nndCheckInUIView = [[UIView alloc]initWithFrame:CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>)];

        UIView *logoSpace;
        UIView *ClientDataSpace;
        UIView *CheckInButtonSpace;
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
