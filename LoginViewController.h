//
//  LoginViewController.h
//  Ribbit
//
//  Created by Jason Koceja on 9/2/13.
//  Copyright (c) 2013 Jason Koceja. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *usernameField;

- (IBAction)login:(id)sender;

@end
