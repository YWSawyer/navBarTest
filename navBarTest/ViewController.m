//
//  ViewController.m
//  navBarTest
//
//  Created by dahuoshi on 11/01/2018.
//  Copyright © 2018 dahuoshi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.navigationController.navigationBar setTranslucent:NO];
    
    
    UIButton *test1Btn = [UIButton buttonWithType:UIButtonTypeCustom];
    test1Btn.titleLabel.font = [UIFont systemFontOfSize:14];
    [test1Btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [test1Btn setTitle:@"test" forState:UIControlStateNormal];
    test1Btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    UIBarButtonItem *rightBarButtonTest2Item = [[UIBarButtonItem alloc] initWithCustomView:test1Btn];
    
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [testBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testBtn setTitle:@"test" forState:UIControlStateNormal];
    testBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    UIBarButtonItem *rightBarButtonTestItem = [[UIBarButtonItem alloc] initWithCustomView:testBtn];
//    self.navigationController.navigationItem.rightBarButtonItem = rightBarButtonTestItem; //self.navigationController.navigationItem 从导航栏获取的navigationItem是无效的。
//    self.navigationItem.rightBarButtonItem = rightBarButtonTestItem;
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:rightBarButtonTestItem,rightBarButtonTest2Item, nil];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"] forBarMetrics:UIBarMetricsDefault];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
