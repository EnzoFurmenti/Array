//
//  AppDelegate.m
//  Array
//
//  Created by EnzoF on 21.07.16.
//  Copyright © 2016 EnzoF. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "Human.h"
#import "Runner.h"
#import "Cyclist.h"
#import "Swimmer.h"
#import "Indication.h"
#import "Animal.h"
#import "Cat.h"
#import "Dog.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor yellowColor];
    [self.window makeKeyWindow];
    ViewController *controller = [[ViewController alloc] init];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:controller];
    self.window.rootViewController = navController;
    
    Human *human = [[Human alloc] init];
    human.name = @"Smith";
    human.stature = 180.f;
    human.sex = @"M";
    human.weight = 80.f;
    
    
    Runner *runner = [[Runner alloc] init];
    runner.name = @"Dakota";
    runner.stature = 172.f;
    runner.sex = @"W";
    runner.weight = 60.f;
    
    Cyclist *cyclist = [[Cyclist alloc] init];
    cyclist.name = @"Jessica";
    cyclist.stature = 170.f;
    cyclist.sex = @"W";
    cyclist.weight = 62.f;
    
    
    Swimmer *swimmer = [[Swimmer alloc] init];
    swimmer.name = @"Johnson";
    swimmer.stature = 195.f;
    swimmer.sex = @"M";
    swimmer.weight = 90.f;
    
    Indication *indication = [[Indication alloc]init];
    indication.name = @"Jane";
    indication.stature = 175.f;
    indication.sex = @"W";
    indication.weight = 64.f;
    indication.hairColor = @"Black";
    indication.skinColor = @"White";
    
    
    Cat *cat = [[Cat alloc] init];
    cat.nickname = @"Jake";
    cat.age = 5;
    cat.weight = 5.3f;
    cat.sex = @"M";
    
    
    Dog *dog = [[Dog alloc] init];
    dog.nickname = @"Bob";
    dog.age = 3;
    dog.weight = 16.2f;
    dog.sex = @"M";
    
    
    //Уровень Мастер
    
//   NSArray * array = [[NSArray alloc] initWithObjects:human,runner,cyclist,swimmer,indication,dog,cat,nil];
 
 
    
//    for (Human *obj in array.reverseObjectEnumerator) {
//        if([obj isKindOfClass:[Indication class]])
//        {
//            NSLog(@"Тип Human");
//            Indication *indicationHuman = (Indication*)obj;
//            NSLog(@"Имя:%@\nРост:%2.f см\nПол:%@\nВес:%2.f кг\nВолосы:%@\nКожа:%@",indicationHuman.name,indicationHuman.stature,indicationHuman.sex,indicationHuman.weight,indicationHuman.hairColor,indicationHuman.skinColor);
//        }
//        else
//        {
//            if([obj isKindOfClass:[Human class]])
//            {
//                NSLog(@"Тип Human");
//                NSLog(@"Имя:%@\nРост:%2.f см\nПол:%@\nВес:%2.f кг",obj.name,obj.stature,obj.sex,obj.weight);
//                [obj move];
//            }
//            else
//            {
//            Animal *animalObj = (Animal*)obj;
//             NSLog(@"Тип Animal");
//             NSLog(@"Кличка:%@\n\nПол:%@\nВес:%2.f кг",animalObj.nickname,animalObj.sex,animalObj.weight);
//                
//                [animalObj move];
//            }
//        }
//    }
    
    
//Уровень Звезда
    
//    NSArray *arrayHuman = [[NSArray alloc]initWithObjects:runner,cyclist,swimmer, nil];
//    NSArray *arrayAnimal = [[NSArray alloc]initWithObjects:dog,cat, nil];
//    NSUInteger i;
//    
//    if(arrayHuman.count > arrayAnimal.count)
//    {
//        i = arrayHuman.count -1 ;
//    }
//    else
//    {
//        i = arrayAnimal.count - 1;
//    }
//
//    
//    for(int n = 0; n <= i; n++)
//    {
//        if(arrayHuman.count > n)
//        {
//            Human *obj = [arrayHuman objectAtIndex:n];
//            if([obj isKindOfClass:[Indication class]])
//            {
//                Indication *indicationHuman = (Indication*)obj;
//                NSLog(@"Имя:%@\nРост:%2.f см\nПол:%@\nВес:%2.f кг\nВолосы:%@\nКожа:%@",indicationHuman.name,indicationHuman.stature,indicationHuman.sex,indicationHuman.weight,indicationHuman.hairColor,indicationHuman.skinColor);
//            }
//            else
//            {
//                NSLog(@"Имя:%@\nРост:%2.f см\nПол:%@\nВес:%2.f кг",obj.name,obj.stature,obj.sex,obj.weight);
//            }
//        }
//        
//        if(arrayAnimal.count > n)
//        {
//            Animal *animalObj = [arrayAnimal objectAtIndex:n];
//            NSLog(@"Кличка:%@\n\nПол:%@\nВес:%2.f кг",animalObj.nickname,animalObj.sex,animalObj.weight);
//        }
//    }
    
    
//Уровень Супермен

    NSArray * array = [[NSArray alloc] initWithObjects:human,dog,runner,cat,cyclist,swimmer,indication,nil];


    NSMutableArray *arrayAllDict = [NSMutableArray array];
    NSArray *totalSortedArray;
    
    NSString *firstKey = @"name";
    NSString *secondKey = @"Priority";
    for (id obj in array) {
        if([obj isKindOfClass:[Human class]])
        {
            Human *human = (Human*)obj;
            NSString *name = human.name;
            NSString *priority = @"A";
            NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:human,@"object",name,firstKey,priority,secondKey,nil];
            [arrayAllDict addObject:dict];
        }
        else
        {
            Animal *animal = (Animal*)obj;
            NSString *name = animal.nickname;
            NSString *priority = @"B";
            NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:animal,@"object",name,firstKey,priority,secondKey,nil];
            [arrayAllDict addObject:dict];
        }
    }
    
    NSSortDescriptor *firsDescriptor =
    [[NSSortDescriptor alloc] initWithKey:firstKey
                                 ascending:YES
                                  selector:@selector(localizedCaseInsensitiveCompare:)];
    NSSortDescriptor *secondDescriptor =
    [[NSSortDescriptor alloc] initWithKey:secondKey
                                 ascending:YES
                                  selector:@selector(localizedCaseInsensitiveCompare:)];

    
    
    NSArray *descriptors = [NSArray arrayWithObjects:secondDescriptor,
                            firsDescriptor, nil];
    totalSortedArray = [arrayAllDict sortedArrayUsingDescriptors:descriptors];
    // Override point for customization after application launch.
    return YES;
}




- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}




@end
