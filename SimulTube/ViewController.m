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
    AVPlayer *videoPlayer = [[AVPlayer alloc] initWithURL:[NSURL URLWithString:@"http://youtu.be/L8eRzOYhLuw?t=11s"]];
    AVPlayerLayer *videoPlayerLayer = [AVPlayerLayer playerLayerWithPlayer:videoPlayer];
    CALayer *caLayer = [[CALayer alloc] initWithLayer:videoPlayerLayer];
    caLayer.
}

@end
