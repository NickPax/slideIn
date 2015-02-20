//
//  ViewController.m
//  slideIn
//
//  Created by Nick on 4/10/14.
//  Copyright (c) 2014 NICHOLAS PAXFORD. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected yo");
    
    [self animateDetailView];
}


-(void)animateDetailView
{
    
    [UIView animateWithDuration:0.4 animations:^{

        _detailView.frame = CGRectMake(0, 0, 320, 518);

    }];
    
   
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 2;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellID = @"colourCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellID ];
    
    
   // PFObject *pfObj = [coloursArray objectAtIndex:indexPath.row];
    
    
    //cell.cellTitle.text = [pfObj objectForKey:@"CellTitle"];
    
    
    
    return cell;
}



- (IBAction)backButton {
    
    [UIView animateWithDuration:0.4 animations:^{
        
        _detailView.frame = CGRectMake(320, 0, 320, 518);
        
    }];
}
@end
