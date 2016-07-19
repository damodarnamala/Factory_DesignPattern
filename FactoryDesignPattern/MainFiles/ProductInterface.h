//
//  ProductInterface.h
//  FactoryDesignPattern
//
//  Created by damodar patel on 19/07/16.
//  Copyright © 2016 damodar patel. All rights reserved.
//

#ifndef ProductInterface_h
#define ProductInterface_h

@protocol ProductOrderDelegate <NSObject>

-(void)getDiscription;
-(void)getPrice;


@end
#endif /* ProductInterface_h */
