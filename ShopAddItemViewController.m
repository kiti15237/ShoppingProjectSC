//
//  ShopAddItemViewController.m
//  ShoppingList
//
//  Created by Christine Andrea Tataru on 1/22/14.
//
//

#import "ShopAddItemViewController.h"
#import "ShopTableViewController.h"

@interface ShopAddItemViewController ()



@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@property (weak, nonatomic) IBOutlet UITextField *textField;




@end

@implementation ShopAddItemViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if(sender != self.doneButton) return;

    if(self.textField.text.length>0){
        self.addItem= [[ShopItem alloc]init];
        self.addItem.itemName= self.textField.text;
        self.addItem.bought=FALSE;
        [self.shoppingList addObject:self.addItem];
    }
}

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
    self.shoppingList= [[NSMutableArray alloc]init];
	// Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)addAnotherItem:(id)sender {
    ShopItem *item= [[ShopItem alloc]init];
    item.itemName= self.textField.text;
    self.addItem.bought= FALSE;
    [self.shoppingList addObject:item];
    self.textField.text= @"";
}
@end
