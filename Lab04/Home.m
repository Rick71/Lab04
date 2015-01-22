//
//  ViewController.m
//  Lab04
//
//  Created by Ricardo Vera on 19/01/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Home.h"
#import "GlobalVars.h"

NSTimer *myTimer;


@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    counter = 0;
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(goToScores) userInfo:nil repeats:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)goToScores{

    [self performSegueWithIdentifier:@"GoToScore" sender:self];
}



- (IBAction)BtnPushClick:(id)sender {
    counter++;
    self.LblScore.text = [NSString stringWithFormat:@"%d", counter];
}
@end
