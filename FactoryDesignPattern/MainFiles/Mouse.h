//
//  Mouse.h
//  FactoryDesignPattern
//
//  Created by damodar patel on 19/07/16.
//  Copyright © 2016 damodar patel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "ProductInterface.h"
@interface Mouse : Product<ProductOrderDelegate>
{
}
@end
