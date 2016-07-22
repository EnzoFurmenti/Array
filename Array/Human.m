//
//  Human.m
//  Array
//
//  Created by EnzoF on 21.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "Human.h"

@implementation Human

-(void)move{
    NSLog(@"%@ - человек. \n Пол: %@\n Рост: %.2f см\n Вес: %.2f кг",self.name, self.sex, self.stature, self.weight);
}

@end
