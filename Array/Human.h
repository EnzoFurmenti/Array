//
//  Human.h
//  Array
//
//  Created by EnzoF on 21.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, assign) double stature;
@property(nonatomic, assign) double weight;
@property(nonatomic,strong) NSString *sex;

- (void)move;

@end
