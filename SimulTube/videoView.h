//
//  videoView.h
//  SimulTube
//
//  Created by Cam on 11/14/14.
//  Copyright (c) 2014 SimulTube. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface videoView : UIView

- (void) initWithURl:(NSURL *)url withPlayBackTime:(NSTimeInterval *)playBackTime;

@end