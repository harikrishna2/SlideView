//
//  PageContentViewController.m
//  PageViewControllerSample
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "PageContentViewController.h"

@interface PageContentViewController ()

@end

@implementation PageContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView.frame = CGRectMake(0, 0, 0, 0);
    self.labelTitle.text = self.imageText;
    self.imageView.image = [UIImage imageNamed:self.imageFile];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
