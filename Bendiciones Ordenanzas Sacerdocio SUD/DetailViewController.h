//
//  DetailViewController.h
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by Joel on 3/18/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Blessing.h"
#import <MessageUI/MessageUI.h>

@interface DetailViewController : UIViewController <MFMessageComposeViewControllerDelegate>

{
    IBOutlet UIImageView *backgroundImage;
    IBOutlet UIButton *sendSMSBUTTON;
    
    IBOutlet UILabel *titleLABEL;
    

    
}
@property (weak, nonatomic) IBOutlet UITextView *descriptionTEXTVIEW;
@property (strong, nonatomic) Blessing *blessing;
- (IBAction)sendSMSACTION:(id)sender;

@end
