//
//  HomepageViewController.h
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by Joel on 3/16/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "Blessing.h"

@interface HomepageViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *blessings;
    NSArray *finalArray;
    Blessing *cellBlessing;
    IBOutlet UITableView *tableview;
    IBOutlet UIButton *toBendiciones;
    IBOutlet UIButton *toOrganizacion;
    IBOutlet UIButton *toInformacion;
    IBOutlet UIImageView *toOrganizacionImageView;
}
@property (strong, nonatomic) NSArray *blessingsArray;
@property (strong, nonatomic) Blessing *blessing;
@property (strong, nonatomic) NSMutableArray *mainBlessingsArray;

- (IBAction)toOrganizacion:(id)sender;
- (IBAction)toInfo:(id)sender;


@end
