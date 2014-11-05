//
//  PageContentViewController.h
//  PageViewControllerSample
//
//  Created by Girish on 10/29/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *labelTitle;
@property NSString *imageText;
@property NSString *imageFile;
@property NSUInteger pageIndex;
@end
