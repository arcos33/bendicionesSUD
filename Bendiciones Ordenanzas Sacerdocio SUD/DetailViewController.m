//
//  DetailViewController.m
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by Joel on 3/18/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    self.descriptionTEXTVIEW.text = self.blessing.description;
    titleLABEL.text = self.blessing.name;
    [self loadBackgroundImages];
     }

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
    {
        switch (result)
        {
            case MessageComposeResultCancelled:
                break;
                
            case MessageComposeResultFailed:
            {
                UIAlertView *warningAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Failed to send SMS!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                [warningAlert show];
                break;
            }
                
            case MessageComposeResultSent:
                break;
                
            default:
                break;
        }
        
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
- (void)loadBackgroundImages
{
    if ([self.blessing.name isEqualToString:@"Bautismo"])
    {
        backgroundImage.image = [UIImage imageNamed:@"bautismo.png"];
        backgroundImage.alpha = 0.75;

    }
    
    else if ([self.blessing.name isEqualToString:@"Confirmacion"])
    {
        backgroundImage.image = [UIImage imageNamed:@"White-Dove.png"];
        backgroundImage.alpha = 0.75;


    }
    
    else if ([self.blessing.name isEqualToString:@"Nombre y Bendicion de niños"])
    {
        backgroundImage.image = [UIImage imageNamed:@"bendecirNinos.png"];
        backgroundImage.alpha = 0.75;

        
    }
    
    else if ([self.blessing.name isEqualToString:@"Santa Cena"])
    {
        backgroundImage.image = [UIImage imageNamed:@"sacrament.png"];
        backgroundImage.alpha = 0.75;
        
    }
    
    else if ([self.blessing.name isEqualToString:@"Consagrar Aceite"])
    {
        backgroundImage.image = [UIImage imageNamed:@"consecrateOil.png"];
        backgroundImage.alpha = 0.75;

        
    }
    
    else if ([self.blessing.name isEqualToString:@"Bendecir a los Enfermos"])
    {
        backgroundImage.image = [UIImage imageNamed:@"blessingTheSick.png"];
        backgroundImage.alpha = 0.75;

        
    }
    
    else if ([self.blessing.name isEqualToString:@"Conferir el Sacerdocio"])
    {
        backgroundImage.image = [UIImage imageNamed:@"priesthood.png"];
        backgroundImage.alpha = 0.75;

        
    }
    
    else if ([self.blessing.name isEqualToString:@"Bendicion de Consuelo/Consejo"])
    {
        backgroundImage.image = [UIImage imageNamed:@"blessingOfComfort.png"];
        backgroundImage.alpha = 0.75;

        
    }
    
    else if ([self.blessing.name isEqualToString:@"Dedicar Sepulturas"])
    {
        backgroundImage.image = [UIImage imageNamed:@"dedicateGrave.png"];
        //backgroundImage.alpha = 0.75;

    }
    
    else if ([self.blessing.name isEqualToString:@"Apartar oficiales y maestros"])
    {
        backgroundImage.image = [UIImage imageNamed:@"calling.png"];
        backgroundImage.alpha = 0.75;

        
    }
    
    else if ([self.blessing.name isEqualToString:@"Dedicar hogares"])
    {
        backgroundImage.image = [UIImage imageNamed:@"blessHome.png"];
        backgroundImage.alpha = 0.75;

        
    }
}

- (void)showSMS:(NSString*)file {
    
    if(![MFMessageComposeViewController canSendText]) {
        UIAlertView *warningAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Your device doesn't support SMS!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [warningAlert show];
        return;
    }
    
    //NSArray *recipents = @[@"12345678", @"72345524"];
    NSString *message = [NSString stringWithFormat:@"%@ \n\n Descarga la aplicacion \"Bendiciones del Sacerdocio\"", file];
    
    MFMessageComposeViewController *messageController = [[MFMessageComposeViewController alloc] init];
    messageController.messageComposeDelegate = self;
    //[messageController setRecipients:recipents];
    [messageController setBody:message];
    
    // Present message view controller on screen
    [self presentViewController:messageController animated:YES completion:nil];
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

- (IBAction)sendSMSACTION:(id)sender
{
    [self showSMS:self.blessing.description];
}
@end
