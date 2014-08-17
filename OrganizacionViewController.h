//
//  OrganizacionViewController.h
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by iosninjamaster on 6/9/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrganizacionViewController : UIViewController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>
{
    IBOutlet UIButton *toBendiciones;
    IBOutlet UIButton *toOrganizacion;
    IBOutlet UIButton *toInfo;
    IBOutlet UIImageView *presidentImage;
}

- (IBAction)toBlessings:(id)sender;
- (IBAction)toInfo:(id)sender;
-(IBAction)takePhoto :(id)sender;
-(IBAction)chooseFromLibrary:(id)sender;


@end
