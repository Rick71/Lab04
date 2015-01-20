//
//  ViewController.m
//  Lab04
//
//  Created by Ricardo Vera on 19/01/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Home.h"

int counter=0;


@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)BtnPushClick:(id)sender {
    counter++;
    self.LblScore.text = [NSString stringWithFormat:@"%d", counter];
}
@end
