//
//  ProductoCell.h
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 30/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductoCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *ImageProduct;
@property (strong, nonatomic) IBOutlet UILabel *lblProduct;
@property (strong, nonatomic) IBOutlet UILabel *lblPrice;
@property (strong, nonatomic) IBOutlet UIButton *btnBuy;
- (IBAction)btnBuyPressed:(id)sender;

@end
