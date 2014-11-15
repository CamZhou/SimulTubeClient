//
//  ViewController.m
//  SimulTube
//
//  Created by Cam on 11/14/14.
//  Copyright (c) 2014 SimulTube. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playVideo:(id)sender {
    LBYouTubeExtractor* extractor = [[LBYouTubeExtractor alloc] initWithURL:[NSURL URLWithString:@"https://www.youtube.com/watch?v=LzHFD1sEqpE"] quality:LBYouTubeVideoQualityLarge];
    
    [extractor extractVideoURLWithCompletionBlock:^(NSURL *videoURL, NSError *error) {
        if(!error) {
            NSLog(@"Did extract video URL using completion block: %@", videoURL);
        } else {
            NSLog(@"Failed extracting video URL using block due to error:%@", error);
        }
    }];
    
    // Setup the player controller and add it's view as a subview:
    
    LBYouTubePlayerViewController* controller = [[LBYouTubePlayerViewController alloc] initWithYouTubeURL:[NSURL URLWithString:@"https://www.youtube.com/watch?v=LzHFD1sEqpE"] quality:LBYouTubeVideoQualityLarge];
    controller.delegate = self;

    self.view.window.rootViewController = controller;
    [self.view.window makeKeyAndVisible];
}

-(void)youTubePlayerViewController:(LBYouTubePlayerViewController *)controller didSuccessfullyExtractYouTubeURL:(NSURL *)videoURL {
    NSLog(@"Did extract video source:%@", videoURL);
}

-(void)youTubePlayerViewController:(LBYouTubePlayerViewController *)controller failedExtractingYouTubeURLWithError:(NSError *)error {
    NSLog(@"Failed loading video due to error:%@", error);
}

@end
