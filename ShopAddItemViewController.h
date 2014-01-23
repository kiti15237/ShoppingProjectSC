//
//  ShopAddItemViewController.h
//  ShoppingList
//
//  Created by Christine Andrea Tataru on 1/22/14.
//
//

#import <UIKit/UIKit.h>
#import "ShopItem.h"

@interface ShopAddItemViewController : UIViewController

@property ShopItem *addItem;
@property NSMutableArray *tempShoppingList;

- (IBAction)addAnotherItem:(id)sender;


@end
