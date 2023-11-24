//
//  SLGovernment.m
//  NotificationTest
//
//  Created by Serhii Lukashchuk on 2023-11-24.
//

#import "SLGovernment.h"

@implementation SLGovernment

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 5;
        self.salary = 1000;
        self.pesion = 500;
        self.averagePrice = 10.f;

    }
    return self;
}

@end
