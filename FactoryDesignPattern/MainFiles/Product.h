//
//  Product.h
//  FactoryDesignPattern
//
//  Created by damodar patel on 19/07/16.
//  Copyright © 2016 damodar patel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductInterface.h"
@interface Product : NSObject
{

}
@property(nonatomic,weak) id<ProductOrderDelegate> delegate;

@end
