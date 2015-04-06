//
//  QPSplitViewController+Storyboard.m
//  Example
//
//  Created by smk-dev on 06.04.2015.
//  Copyright (c) 2015 quangpc. All rights reserved.
//

#import "QPSplitViewController+Storyboard.h"

@implementation QPSplitViewControllerSegue

- (void)perform {
    NSAssert( [self.sourceViewController isKindOfClass: [QPSplitViewController class]], @"QPSplitViewControllerSegue only to be used to define left/right controllers for a QPSplitViewController!");
}

@end

@implementation QPSplitViewController (Storyboard)

- (void)awakeFromNib {
    [super awakeFromNib];
    
    if ( self.storyboard != nil ) {
        @try {
            [self performSegueWithIdentifier: @"qp_left" sender: self];
        }
        @catch (NSException *exception) {
        }
        @finally {
        }
        @try {
            [self performSegueWithIdentifier: @"qp_right" sender: self];
        }
        @catch (NSException *exception) {
        }
        @finally {
        }
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ( [segue.identifier isEqualToString: @"qp_left"] ) {
        NSParameterAssert( [segue isKindOfClass: [QPSplitViewControllerSegue class]]);
        [self setLeftController: segue.destinationViewController];
    }
    else if ( [segue.identifier isEqualToString: @"qp_right"] ) {
        NSParameterAssert( [segue isKindOfClass: [QPSplitViewControllerSegue class]]);
        [self setRightController: segue.destinationViewController];
    }
}

@end
