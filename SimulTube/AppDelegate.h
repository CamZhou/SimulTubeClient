//
//  AppDelegate.h
//  SimulTube
//
//  Created by Cam on 11/14/14.
//  Copyright (c) 2014 SimulTube. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <CoreLocation/CoreLocation.h>
#import <Firebase/Firebase.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) CLLocationManager *locationManager;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

