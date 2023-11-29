//
//  SLGovernment.h
//  NotificationTest
//
//  Created by Serhii Lukashchuk on 2023-11-24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString* const SLGovernmentTaxLeveDidChangeNotification;
extern NSString* const SLGovernmentSalaryLeveDidChangeNotification;
extern NSString* const SLGovernmentPensionLeveDidChangeNotification;
extern NSString* const SLGovernmentAveragePriceLeveDidChangeNotification;

extern NSString* const SLGovernmentTaxLeveDidChangeKey;
extern NSString* const SLGovernmentSalaryLeveDidChangeKey;
extern NSString* const SLGovernmentPensionLeveDidChangeKey;
extern NSString* const SLGovernmentAveragePriceLeveDidChangeKey;

@interface SLGovernment : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;

@end

NS_ASSUME_NONNULL_END
