
/*  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
 Author: Kian D.Rad
 Date:   August 3rd 2017
 ReadMe:
 */

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NNDCheckInController.h"

//NNDCheckInService
// Extension method add private protected items into it
@interface NNDCheckInController()

@property(strong, nonatomic)  NNDCheckInService *nndCheckInService;
@property(strong, nonatomic)  NNDCheckInModel *model;

@end


@implementation NNDCheckInController: NSObject


- (instancetype)init {
    self = [super init];
    if (self) {


    }
    return self;
}


- (instancetype)initWithDataModel {
    self = [super init];
    if (self) {


        // initWithModel

        _model = [[NNDCheckInModel alloc]init];
        _nndCheckInService =[[NNDCheckInService alloc] initWithDataModel];

        


        [_nndCheckInService nndCheckInUIViewInitializer:_model ];


        /*
         Author: Kian D.Rad
         Date:   August 3rd 2017
         ReadMe: Build the View as needed here.
         TODO: 
            1- Build UIView, 
            2- Build button

         
         
         PatiendDataMode  = [[PatiendDataMode alloc] initDataModel];
         LocationOfUser   = [[LocationOfUser alloc] initWithDataModel];
         StatusOfVisit    = [[statusOfVisit alloc] initWithDataModel];

         UIView thisView = [UIView alloc]initWith (patientdDataMode, LocationOfUser, StatusOfVisit)];
         



         
         */




    }
    return self;
}



-(void) HelloDepenecyIntegrationNNDCheckInController{

    NSLog(@"-(void) HelloDepenecyIntegrationNNDCheckInController;");
}

@end


