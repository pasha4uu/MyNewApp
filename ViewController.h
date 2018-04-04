//
//  ViewController.h
//  POPUPWINDOW
//
//  Created by Bhagy on 09/03/18.
//  Copyright © 2018 Bhagy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "MBProgressHUD.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *popView;
- (IBAction)closeOnTap:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *closeTap;
- (IBAction)popUPTap:(id)sender;

- (void)showInView:(UIView *)aView animated:(BOOL)animated;
@end

