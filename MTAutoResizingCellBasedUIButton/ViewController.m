//
//  ViewController.m
//  MTAutoResizingCellBasedUIButton
//
//  Created by Manh Tien on 5/8/16.
//  Copyright © 2016 matie. All rights reserved.
//

#import "ViewController.h"
#import "TestCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong,nonatomic) TestCell *prototypeCell;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    _prototypeCell = [self.tableView dequeueReusableCellWithIdentifier:@"TestCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDatasource and Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TestCell" forIndexPath:indexPath];
    [self configureCell:cell forRowAtIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell forRowAtIndexPath: (NSIndexPath *)indexPath{
    if ([cell isKindOfClass:[TestCell class]]) {
        TestCell *testCell = (TestCell *)cell;
        [testCell.btnTest setTitle:@"An example autoresizing UITableViewCell height based on UIButton added as subview by Matie.An example autoresizing UITableViewCell height based on UIButton added as subview by Matie.An example autoresizing UITableViewCell height based on UIButton added as subview by Matie." forState:UIControlStateNormal];
#warning You need to have this below line, to calculate height when the first time viewDidLoad.
        testCell.btnTest.titleLabel.text = @"An example autoresizing UITableViewCell height based on UIButton added as subview by Matie.An example autoresizing UITableViewCell height based on UIButton added as subview by Matie.An example autoresizing UITableViewCell height based on UIButton added as subview by Matie.";
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    [self configureCell:self.prototypeCell forRowAtIndexPath:indexPath];
    //
    self.prototypeCell.bounds = CGRectMake(0.0f, 0.0f, CGRectGetWidth(self.tableView.bounds), CGRectGetHeight(self.prototypeCell.bounds));
    [self.prototypeCell setNeedsLayout];
    [self.prototypeCell layoutIfNeeded];
    CGSize size = [self.prototypeCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height +1;
    
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50.0f;
}
@end
