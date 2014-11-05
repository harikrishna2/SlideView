//
//  ViewController.m
//  PageViewControllerSample
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "ViewController.h"
#import "PageContentViewController.h"

@interface ViewController ()
{
    NSArray *imageNames;
    NSArray *imageTitles;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    imageNames = @[@"1.jpeg", @"2.jpeg", @"3.jpeg", @"4", @"5", @"6"];
    imageTitles = @[@"Dog", @"Indian Roller", @"Kangaroo", @"Cat", @"Peacock", @"Penguin"];
    
    self.pageView = [self.storyboard instantiateViewControllerWithIdentifier:@"MainPageView"];
    self.pageView.dataSource = self;
    
    PageContentViewController *pageViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[pageViewController];
    
    [self.pageView setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    self.pageView.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [self addChildViewController:self.pageView];
    [self.view addSubview:self.pageView.view];
    [self.pageView didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return imageTitles.count;
}
- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 2;
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSInteger index = ((PageContentViewController *)viewController).pageIndex;
    if(index == NSNotFound)
        return nil;
    index++;
    if(index == [imageTitles count])
        return nil;
    return [self viewControllerAtIndex:index];
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((PageContentViewController *)viewController).pageIndex;
    if(index == NSNotFound || index == 0)
        return nil;
    index--;
    return [self viewControllerAtIndex:index];
}
- (PageContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([imageNames count] == 0) || (index >= [imageNames count])) {
        return nil;
    }
    PageContentViewController *pageContentView = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentView"];
    pageContentView.imageFile = imageNames[index];
    pageContentView.imageText = imageTitles[index];
    pageContentView.pageIndex = index;
    return pageContentView;
}

@end
