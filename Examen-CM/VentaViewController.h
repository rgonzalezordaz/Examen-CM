//
//  VentaViewController.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 30/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PayPalMobile.h"

@interface VentaViewController : UIViewController <PayPalPaymentDelegate>

@property NSString *ProductSelected;
@property NSString *ImageProductSelected;
@property NSNumber *priceSelected;

@property (strong, nonatomic) IBOutlet UIImageView *ImageProduct;
@property (strong, nonatomic) IBOutlet UILabel *ProductId;
@property (strong, nonatomic) IBOutlet UILabel *Price;

@end
