//
//  PatientDataModel.h
//  NNDCheckIn
//
//  Created by Kian Davoudi-Rad on 2017-08-14.
//  Copyright © 2017 Kian Davoudi-Rad. All rights reserved.
//

#ifndef PatientDataModel_h
#define PatientDataModel_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "LocationClientDataModel.h"
#import "VisitDataModel.h"

//#import "NNDCheckInController.h"
@interface Client : NSObject

@property (strong, nonatomic) NSString *clientFirstName;
@property (strong, nonatomic) NSString *clientLastName;
@property (strong, nonatomic) NSString *clientPrimaryResidentialAddress;
@property (strong, nonatomic) NSString *clientPrimaryResidentialAddress;
@property (strong, nonatomic) LocationClientDataModel *locationClient;
@property (strong, nonatomic) VisitDataModel *visit;


//LocationClientDataModel
//VisitDataModel


@end


#endif /* PatientDataModel_h */
