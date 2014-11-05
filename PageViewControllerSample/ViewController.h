//
//  ViewController.h
//  PageViewControllerSample
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPageViewControllerDataSource>
@property (nonatomic, strong) UIPageViewController *pageView;


@end

