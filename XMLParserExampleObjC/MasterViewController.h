//
//  MasterViewController.h
//  XMLParserExampleObjC
//
//  Created by Fenkins on 24/06/15.
//  Copyright (c) 2015 Fenkins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "List.h"
@interface MasterViewController : UITableViewController

@property (nonatomic, retain) AppDelegate *app;
@property (nonatomic, retain) List *theList;

@end

