//
//  ProductFactory.h
//  FactoryDesignPattern
//
//  Created by damodar patel on 19/07/16.
//  Copyright © 2016 damodar patel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "ProductInterface.h"

@interface ProductFactory : NSObject
{
    
}

@property(nonatomic,strong) Product *product;
@property(nonatomic,strong) id<ProductOrderDelegate> delegate;

-(Product *)makeProductFromID:(NSString *)productType;


@end
