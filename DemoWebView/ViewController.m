//
//  ViewController.m
//  DemoWebView
//
//  Created by zhangshaoyu on 16/12/14.
//  Copyright © 2016年 zhangshaoyu. All rights reserved.
//

#import "ViewController.h"
#import "SYWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *buttonBack = [UIButton buttonWithType:UIButtonTypeCustom];
    buttonBack.frame = CGRectMake((self.view.frame.size.width - 100)/2, 100, 100, 40);
    buttonBack.backgroundColor = [UIColor greenColor];
    [buttonBack setTitle:@"点击试试" forState:UIControlStateNormal];
    [buttonBack setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [buttonBack setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    buttonBack.tag = 1001;
    [buttonBack addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonBack];
}

- (void)buttonAction:(UIButton *)sender
{
    SYWebViewController *nextVC = [[SYWebViewController alloc] init];
    
    [self presentViewController:nextVC animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)])
    {
        [self setEdgesForExtendedLayout:UIRectEdgeNone];
    }
}



@end
