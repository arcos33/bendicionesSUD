//
//  OrganizacionViewController.m
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by iosninjamaster on 6/9/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import "OrganizacionViewController.h"
#import "HomepageViewController.h"


@interface OrganizacionViewController ()

@end

@implementation OrganizacionViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)toBlessings:(id)sender
{
    [self animateBlessingsButton];
    [self performSelector:@selector(toBlessingsb) withObject:nil afterDelay:.3];
    
}

- (void)toBlessingsb
{
    UIStoryboard *storyboard = self.storyboard;
    UINavigationController *mainNavigationController = [storyboard instantiateInitialViewController];
    [self presentViewController:mainNavigationController animated:YES completion:nil];
}

- (IBAction)toInfo:(id)sender
{

}


- (void)animateBlessingsButton
{
    toBendiciones.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    
    //imgView is your UIImageView where you set an image
    [UIView animateWithDuration:0.3/1.5 animations:^{
        toBendiciones.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            toBendiciones.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                toBendiciones.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
}

- (void)animateOrganizacionButton
{

}


-(IBAction)takePhoto :(id)sender

{
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera])
    {
        [imagePickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    }
    
    // image picker needs a delegate,
    [imagePickerController setDelegate:self];
    
    // Place image picker on the screen
    [self presentViewController:imagePickerController animated:YES completion:nil];
    //[self presentModalViewController:imagePickerController animated:YES];
}



-(IBAction)chooseFromLibrary:(id)sender
{
    
    UIImagePickerController *imagePickerController= [[UIImagePickerController alloc] init];
    [imagePickerController setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    
    // image picker needs a delegate so we can respond to its messages
    [imagePickerController setDelegate:self];
    
    // Place image picker on the screen
    [self presentViewController:imagePickerController animated:YES completion:nil];
    //[self presentModalViewController:imagePickerController animated:YES];
    
}

//delegate methode will be called after picking photo either from camera or library
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //[self dismissModalViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    [presidentImage setImage:image];    // "myImageView" name of any UIImageView.
}
@end
