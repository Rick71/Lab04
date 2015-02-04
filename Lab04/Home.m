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
int contador = 0;


@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    contador = 0;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    counter = 0;
    
    myTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(tiempo) userInfo:nil repeats:YES];
}

-(void)tiempo{
    int segundos = 10-contador;
    self.lblTiempo.text = [NSString stringWithFormat:@"%d", segundos];
    contador++;
    if(segundos == 0){
        [myTimer invalidate];
        myTimer = nil;
        [self goToScores];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)goToScores{
    BOOL success = NO;
    NSDateFormatter *DateFormatter=[[NSDateFormatter alloc] init];
    [DateFormatter setDateFormat:@"yyyy-MM-dd hh:mm:ss"];
    
    success = [[DBScore getSharedInstance]saveData:
               [NSString stringWithFormat:@"%i",counter]
                                              detail:[DateFormatter stringFromDate:[NSDate date]]];
    
    [self performSegueWithIdentifier:@"GoToScore" sender:self];
    
}







- (IBAction)BtnPushClick:(id)sender {
    counter++;
    self.LblScore.text = [NSString stringWithFormat:@"%d", counter];
}


@end
