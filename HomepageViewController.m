//
//  HomepageViewController.m
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by Joel on 3/16/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import "HomepageViewController.h"

@interface HomepageViewController ()

@end

@implementation HomepageViewController
@synthesize blessings;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.blessings = @[@"Bautismo", @"Confirmacion", @"Nombre y Bendicion de niños", @"Santa Cena", @"Consagrar Aceite", @"Bendecir a los Enfermos", @"Conferir el Sacerdocio", @"Bendicion de Consuelo & Consejo", @"Dedicar Sepulturas", @"Apartir oficiales y maestros", @"Dedicar hogares", @"Bendicion Patriarcal"];
    
    
    
    
    
}

-   (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-   (int)tableView:(UITableView *)tableview numberOfRowsInSection:(NSInteger)section{
   
    return [self.blessings count];
}

-   (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"identifier"];
    }
    cell.textLabel.text = [self.blessings objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
