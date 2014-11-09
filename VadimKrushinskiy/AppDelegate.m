//
//  AppDelegate.m
//  VadimKrushinskiy
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "GHCar.h"

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    GHCar *car1 = [[GHCar alloc] initWithEngineCapacity:2.5 andHorsePower:192];
    car1.topSpeed = 230.0;
    car1.mark = @"BMW";
    [car1 printCarIformation];
    
    GHCar *AnotherCar = [[GHCar alloc] initWithEngineCapacity:2.4 andHorsePower:180];
    AnotherCar.topSpeed = 225.0;
    AnotherCar.mark = @"Audi";
    [AnotherCar printCarIformation];
    
    if ([car1 isFasterThanCar:AnotherCar]) {
        NSLog(@"%@ is faster. speed - %0.0f", car1.mark, car1.topSpeed);
    } else {
        NSLog(@"%@ is faster. speed - %0.0f", AnotherCar.mark, AnotherCar.topSpeed);
    }
    
    
    return YES;
}

@end
