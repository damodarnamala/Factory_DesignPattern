//
//  ProductFactory.m
//  FactoryDesignPattern
//
//  Created by damodar patel on 19/07/16.
//  Copyright © 2016 damodar patel. All rights reserved.
//

#import "ProductFactory.h"
#import "Product.h"
#import "Mouse.h"
#import "Keyboard.h"

@implementation ProductFactory
-(BOOL)isKeyboard:(NSString *)productType{
    
    NSString *strProduct = [productType substringToIndex:1];
    if ([strProduct isEqualToString:@"k"]) {
        return true;
    }
    return false;
}
-(Product *)makeProductFromID:(NSString *)productType{
    if ([self isKeyboard:productType]) {
        _product = [[Keyboard alloc] init];
    }
    else{
        _product = [[Mouse alloc] init];
    }

    self.delegate = (id <ProductOrderDelegate>) self.product;
    
    if ([self.delegate respondsToSelector:@selector(getPrice)]) {
        [self.delegate getPrice];
    }
    if ([self.delegate respondsToSelector:@selector(getDiscription)]) {
        [self.delegate getDiscription];
    }
    

    return _product;
}



@end
