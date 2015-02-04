//
//  Scores.m
//  Lab04
//
//  Created by Ricardo Vera on 21/01/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Scores.h"
#import "GlobalVars.h"
#import "Score Cell.h"
//#import "DBScore.h"

int counter;
int countDown;
int pos;
NSTimer *initCountDown;
NSTimer *gameDuration;
NSTimer *fontSize;
NSMutableArray *ScoreArray;
bool finished;
// NSMutableArray *FechaArray;



@interface Scores ()

@end

@implementation Scores

- (void)viewDidLoad {
    int counter = 0;
    pos = 0;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    NSDate *hoy = [[NSDate alloc] init];
    ScoreArray = [NSMutableArray arrayWithArray:[[DBScore getSharedInstance]allRecords]];
    NSDateFormatter *dateFormat  =[[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"cccc, MMMM dd, YYYY, \n hh:mm aa"];
     NSString *prettyVersion = [dateFormat stringFromDate:hoy];
    
    for(NSArray *record in ScoreArray){
        if([[record objectAtIndex:1] integerValue] == lastScore){
            pos = counter;
    }
            counter++;
            }
    
    self.lblResultado.text = [NSString stringWithFormat:@"%d", counter];
    self.lblTimestamp.text = prettyVersion;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:pos inSection:0];
    [self.TableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionMiddle animated:YES];
    [self.TableView selectRowAtIndexPath:indexPath animated:YES scrollPosition:UITableViewScrollPositionNone];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return ScoreArray.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"Score_Cell");
    static NSString *CellIdentifier = @"Score_Cell";
    
    Score_Cell *cell = (Score_Cell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[Score_Cell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblClick.text       = ScoreArray[indexPath.row][1];
    cell.lblFecha.text       = ScoreArray[indexPath.row][0];
    
    /* if (indexPath.row == pos) {
        cell.backgroundColor = [UIColor colorWithRed:073 green:0.75 blue:0.56 alpha:1];
     */
    return cell;
}

/* /-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.lblSelectedName.text = maNames[indexPath.row];
    NSString *strTemp;
    
    strTemp = [self.lblSelectedName.text stringByAppendingString: @" fué seleccionado"];
    
    if (indexPath.row == 2)
    {
        alert = [[UIAlertView alloc] initWithTitle:@"Alerta Oaxaca"
                                           message:strTemp
                                          delegate:self
                                 cancelButtonTitle:@"Cancelar"
                                 otherButtonTitles:@"Guardar", @"Publicar", nil];
        [alert show];
    }
}

*/

- (IBAction)btnAtras:(id)sender {
    [self performSegueWithIdentifier:@"GoToHome" sender:self];
}
@end
