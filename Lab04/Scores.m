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

NSMutableArray *ScoreArray;
NSMutableArray *Fechaarray;



@interface Scores ()

@end

@implementation Scores

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSDate *hoy = [[NSDate alloc] init];
    
    NSDateFormatter *dateFormat  =[[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"cccc, MMMM dd, YYYY, \n hh:mm aa"];
     NSString *prettyVersion = [dateFormat stringFromDate:hoy];
    
    self.lblResultado.text = [NSString stringWithFormat:@"%d", counter];
    self.lblTimestamp.text = prettyVersion;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Score_cell");
    static NSString *CellIdentifier = @"Score_Cell";
    
    Score_Cell *cell = (Score_Cell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[Score_Cell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.LblScore.text       = ScoreArray[indexPath.row];
    cell.LblFecha.text       = Fechaarray[indexPath.row];
    
    return cell;
}

/*/-------------------------------------------------------------------------------
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
@end
