//
//  ShoppingCart.m
//  FactoryDesignPattern
//
//  Created by damodar patel on 19/07/16.
//  Copyright © 2016 damodar patel. All rights reserved.
//

#import "ShoppingCart.h"
#import "Product.h"
#import "Keyboard.h"
#import "Mouse.h"
#import "ProductFactory.h"
@interface ShoppingCart ()
{
    
}
@property(nonatomic,strong) NSMutableArray *arrayProducts;
@property(nonatomic,strong) ProductFactory *productFactory;


@end

@implementation ShoppingCart
- (instancetype)init
{
    self = [super init];
    if (self) {
        _productFactory = [[ProductFactory alloc] init];
        
    }
    return self;
}
-(void)addProduct:(NSString *)ProductID{
    self.arrayProducts = [[NSMutableArray alloc] init];
    [self.arrayProducts addObject:[_productFactory makeProductFromID:ProductID]];
}

@end
