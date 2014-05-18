//
//  TaskC.m
//  JobControllerExample
//
//  Created by David House on 4/27/14.
//  Copyright (c) 2014 randomaccident. All rights reserved.
//

#import "TaskC.h"

@interface TaskC()

#pragma mark - Properties
@property (nonatomic,strong) NSTimer *timer;

@end

@implementation TaskC

#pragma mark - NSOperation stuff
- (void)operationStart
{
    NSTimeInterval taskDelay = (arc4random() % 20) / 100.0;
    self.timer = [NSTimer timerWithTimeInterval:taskDelay target:self selector:@selector(timerFired:) userInfo:nil repeats:NO];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
}

- (void)timerFired:(NSTimer *)timer
{
    // calculate a random color in the red spectrum
    self.outputColor = [UIColor colorWithRed:0.0 green:0.0 blue:(((arc4random() % 206) + 50.0) / 256.0) alpha:1.0];
    [self operationDone];
}

- (void)cancel
{
    if ( self.timer ) {
        [self.timer invalidate];
        self.timer = nil;
        [self operationDone];
    }
    [super cancel];
}

@end

