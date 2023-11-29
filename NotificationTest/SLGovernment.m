//
//  SLGovernment.m
//  NotificationTest
//
//  Created by Serhii Lukashchuk on 2023-11-24.
//

#import "SLGovernment.h"

NSString* const SLGovernmentTaxLeveDidChangeNotification = @"SLGovernmentTaxLeveDidChangeNotification";
NSString* const SLGovernmentSalaryLeveDidChangeNotification = @"SLGovernmentSalaryLeveDidChangeNotification";
NSString* const SLGovernmentPensionLeveDidChangeNotification = @"SLGovernmentPensionLeveDidChangeNotification";
NSString* const SLGovernmentAveragePriceLeveDidChangeNotification = @"SLGovernmentAveragePriceLeveDidChangeNotification";

NSString* const SLGovernmentTaxLeveDidChangeKey = @"SLGovernmentTaxLeveDidChangeKey";
NSString* const SLGovernmentSalaryLeveDidChangeKey = @"SLGovernmentSalaryLeveDidChangeKey";
NSString* const SLGovernmentPensionLeveDidChangeKey = @"SLGovernmentPensionLeveDidChangeKey";
NSString* const SLGovernmentAveragePriceLeveDidChangeKey = @"SLGovernmentAveragePriceLeveDidChangeKey";

@implementation SLGovernment

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 5.f;
        self.salary = 1000;
        self.pension = 500;
        self.averagePrice = 10.f;

    }
    return self;
}

- (void) taxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:taxLevel] forKey:SLGovernmentTaxLeveDidChangeKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:SLGovernmentTaxLeveDidChangeNotification 
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) salary:(CGFloat)salary {
    _salary = salary;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:salary] forKey:SLGovernmentSalaryLeveDidChangeKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:SLGovernmentSalaryLeveDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) pension:(CGFloat)pension {
    _pension = pension;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:pension] forKey:SLGovernmentPensionLeveDidChangeKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:SLGovernmentPensionLeveDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) averagePrice:(CGFloat)averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:[NSNumber numberWithFloat:averagePrice] forKey:SLGovernmentAveragePriceLeveDidChangeKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:SLGovernmentAveragePriceLeveDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


@end
