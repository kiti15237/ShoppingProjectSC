//
//  ShopHomePageViewController.m
//  ShoppingList
//
//  Created by Christine Andrea Tataru on 1/26/14.
//
//

#import "ShopHomePageViewController.h"
#import "ShopTableViewController.h"
#import "ShopItem.h"

@interface ShopHomePageViewController ()

@property (weak, nonatomic) IBOutlet UIBarButtonItem *goToShoppingList;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation ShopHomePageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	if(self.shoppingList==nil){
        self.shoppingList= [[NSMutableArray alloc]init];
        ShopItem *item= [[ShopItem alloc]init];
        item.itemName= @"Lettuce";
        [self.shoppingList addObject: item];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


 -(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
     if(sender==self.goToShoppingList){
         ShopTableViewController *tableController= (ShopTableViewController *)segue.destinationViewController;
         tableController.shoppingList= self.shoppingList;
     }
 }
 
 - (IBAction) unwindToHomePage:(UIStoryboardSegue *)segue {
     ShopTableViewController *source= [segue sourceViewController];
     self.shoppingList= source.shoppingList;
 }
 

@end
