//
//  HomepageViewController.h
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by Joel on 3/16/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface HomepageViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray *blessings;

@end
