//
//  ImageViewController.m
//  Ribbit
//
//  Created by Jason Koceja on 9/3/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    PFFile *imageFile = [self.message objectForKey:@"file"];
    NSURL *imageFileURL = [[NSURL alloc] initWithString:imageFile.url];
    NSData *imageData = [NSData dataWithContentsOfURL:imageFileURL];
    self.imageView.image = [UIImage imageWithData:imageData];
    
    NSString *senderName = [self.message objectForKey:@"senderName"];
    NSString *title = [NSString stringWithFormat:@"Sent from %@", senderName];
    self.navigationItem.title = title;
                                 
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    if([self respondsToSelector:@selector(timeout)]){
    // set timer to do something after a period of time
    [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(timeout) userInfo:nil repeats:NO];
    }else{
        NSLog(@"Error: selector missing!");
    }
}

#pragma mark - Helper methods
- (void)timeout{
    [self.navigationController popViewControllerAnimated:YES];
}

@end






