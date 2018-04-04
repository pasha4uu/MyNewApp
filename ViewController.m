//
//  ViewController.m
//  POPUPWINDOW
//
//  Created by Bhagy on 09/03/18.
//  Copyright © 2018 Bhagy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
 MBProgressHUD * HUD;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   [self.popView setHidden:YES];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showAnimate
{
    self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
    self.view.alpha = 0;
    [UIView animateWithDuration:.25 animations:^{
        self.view.alpha = 1;
        self.view.transform = CGAffineTransformMakeScale(1, 1);
    }];
}

- (void)removeAnimate
{
    [UIView animateWithDuration:.25 animations:^{
        self.view.transform = CGAffineTransformMakeScale(1.3, 1.3);
        self.view.alpha = 0.0;
    } completion:^(BOOL finished) {
        if (finished) {
            [self.popView removeFromSuperview];
        }
    }];
}

- (void)showInView:(UIView *)aView animated:(BOOL)animated
{
    
    [self.view addSubview:aView];
    if (animated) {
        [self.popView setHidden:NO];
        [self showAnimate];
    }
}

- (IBAction)popUPTap:(id)sender {
    
   

    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionPreferredFramesPerSecondDefault animations:^{
        
        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        
        
    } completion:^(BOOL finished) {
    
        [MBProgressHUD hideHUDForView:self.view animated:YES];
    }];
    
    
    
     
//    self.view.backgroundColor=[[UIColor whiteColor] colorWithAlphaComponent:.6];
//    self.popView.layer.cornerRadius = 5;
//    self.popView.layer.shadowOpacity = 0.8;
//    self.popView.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
//    [self showInView:self.popView animated:YES];
//   
    
}






- (IBAction)closeOnTap:(id)sender {
    
    self.popView.hidden =YES;
   // [self.popView removeFromSuperview];
    [self removeAnimate];
}
@end
