//
//  MenuVC.m
//  HiSocialApp
//
//  Created by indianic on 7/31/15.
//  Copyright (c) 2015 indianic. All rights reserved.
//

#import "MenuVC.h"
#import "SWRevealViewController.h"


@interface MenuVC ()
{
    NSMutableArray *items;
}

@end

@implementation MenuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    items = [[NSMutableArray alloc]initWithObjects:@"HOME",@"SETTINGS",@"LOGOUT", nil];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
        // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return items.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *CellId = [items objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId forIndexPath:indexPath];
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
