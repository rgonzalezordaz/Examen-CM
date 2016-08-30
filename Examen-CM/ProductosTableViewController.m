//
//  ProductosTableViewController.m
//  Examen-CM
//
//  Created by Ricardo Gonzalez on 30/08/16.
//  Copyright © 2016 RGO. All rights reserved.
//

#import "ProductosTableViewController.h"

@interface ProductosTableViewController ()
@property NSMutableArray *imageProducts;
@property NSMutableArray *productId;
@property NSMutableArray *precios;
@end



@implementation ProductosTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    
}
- (void)initController {
    self.imageProducts= [[NSMutableArray alloc] initWithObjects: @"CamisaBlanca.jpg", @"PerfumeLacoste.jpg", @"PantalonDockers.jpg", @"PantalonLevis.jpg", @"LentesLacoste.jpg", @"CamisaPE.jpg", @"Boina.jpg", @"PerfumePE.jpg", @"PlayeraChivas.jpg", @"PlayeraAtlas.jpg", nil];
    
    self.productId   = [[NSMutableArray alloc] initWithObjects: @"Camisa blanca", @"Pefurme Lacoste", @"Pantalon Dockers", @"Pantalon Levis", @"Lentes Lacoste", @"Camisa Perry Ellis", @"Boina", @"Perfume Perry Ellis", @"Playera Chivas", @"Playera Atlas" , nil];
    
    self.precios   = [[NSMutableArray alloc] initWithObjects: @600, @1200, @1000, @899, @3500, @999, @600, @699, @1199, @1099 , nil];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************/
#pragma mark - Table methods
/**********************************************************************************************/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.productId.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    ProductoCell *cell = (ProductoCell *)[tableView dequeueReusableCellWithIdentifier:@"ProductoCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"ProductoCell" bundle:nil] forCellReuseIdentifier:@"ProductoCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"ProductoCell"];
    }
    //Fill cell with info from arrays
    cell.lblProduct.text       = self.productId[indexPath.row];
    cell.ImageProduct.image   = [UIImage imageNamed:self.imageProducts[indexPath.row]];
    
    return cell;
}
@end
