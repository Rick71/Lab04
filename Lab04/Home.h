//
//  ViewController.h
//  Lab04
//
//  Created by Ricardo Vera on 19/01/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBScore.h"

@interface Home : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *LblScore;
@property (strong, nonatomic) IBOutlet UILabel *lblTiempo;

- (IBAction)BtnPushClick:(id)sender;


@end

