//
//  VisitDataModel.h
//  NNDCheckIn
//
//  Created by Kian Davoudi-Rad on 2017-08-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef VisitDataModel_h
#define VisitDataModel_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

// https://developer.apple.com/documentation/corelocation

@interface VisitDataModel : NSObject




typedef enum {

    CheckInStatusEnumCheckInCompleted = 0,
    CheckInStatusEnumCheckInEarlyTrySoon = 1,
    CheckInStatusEnumCheckInLateTryCalling = 2,
    CheckInStatusEnumCheckInErrorCallHQ = 3,
    CheckInStatusEnumCheckInGPSSignalIsNotVailable = 4

}CheckInStatusEnum;


@property (strong, nonatomic) NSDate* StartVisitDate;
@property (strong, nonatomic) NSDate* EndVisitDate;
@property (strong, nonatomic) CLPlacemark* residentialLocationClient;



@end

#endif /* VisitDataModel_h */
