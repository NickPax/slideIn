//
//  ViewController.h
//  slideIn
//
//  Created by Nick on 4/10/14.
//  Copyright (c) 2014 NICHOLAS PAXFORD. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <Parse/Parse.h>
@interface ViewController : UIViewController <UITableViewDelegate>
{
    NSArray *coloursArray;
}
- (IBAction)backButton;

@property (weak, nonatomic) IBOutlet UITableView *theTableView;
@property (weak, nonatomic) IBOutlet UIView *detailView;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

