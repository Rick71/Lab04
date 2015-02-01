//
//  Scores.h
//  Lab04
//
//  Created by Ricardo Vera on 21/01/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Scores : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UILabel *lblResultado;
@property (strong, nonatomic) IBOutlet UILabel *lblTimestamp;

@property (strong, nonatomic) IBOutlet UITableView *TableView;

@end
