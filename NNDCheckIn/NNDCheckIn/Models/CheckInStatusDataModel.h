//
//  CheckInStatusDataModel.h
//  NNDCheckIn
//
//  Created by Kian Davoudi-Rad on 2017-08-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef CheckInStatusDataModel_h
#define CheckInStatusDataModel_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


typedef enum {

    CheckInStatusEnumCheckInCompleted = 0,
    CheckInStatusEnumCheckInEarlyTrySoon = 1,
    CheckInStatusEnumCheckInLateTryCalling = 2,
    CheckInStatusEnumCheckInErrorCallHQ = 3,
    CheckInStatusEnumCheckInGPSSignalIsNotVailable = 4

}CheckInStatusEnum;





@interface CheckInStatusDataModel : NSObject

@property (strong, nonatomic) CheckInStatusEnum* status;

@end


#endif /* CheckInStatusDataModel_h */
