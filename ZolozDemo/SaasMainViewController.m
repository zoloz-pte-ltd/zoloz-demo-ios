//
//  SaasMainViewController.m
//  ZolozDemo
//
//  Created by ZouLu on 2023/9/14.
//  Copyright © 2023 zoloz. All rights reserved.
//

#import "SaasMainViewController.h"
#import "SaasExampleController.h"
#import "ZolozSaasExample-Swift.h"


@interface SaasMainViewController ()

@end

@implementation SaasMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ZOLOZ Demo";

    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    UIButton *ocEnterButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [ocEnterButton setBackgroundColor:[UIColor whiteColor]];
    [ocEnterButton setFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-200)/2, 200, 200, 40)];
    ocEnterButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [[ocEnterButton layer]setBorderColor:[[UIColor lightGrayColor]CGColor]];
    [[ocEnterButton layer]setBorderWidth:1.0f];
    [ocEnterButton setTitle:@"Enter oc page" forState:UIControlStateNormal];
    [self.view addSubview:ocEnterButton];
    [ocEnterButton addTarget:self action:@selector(ocEnterButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *swiftEnterButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [swiftEnterButton setBackgroundColor:[UIColor whiteColor]];
    [swiftEnterButton setFrame:CGRectMake(CGRectGetMinX(ocEnterButton.frame), CGRectGetMaxY(ocEnterButton.frame)+150, 200, 40)];
    swiftEnterButton.titleLabel.font = [UIFont systemFontOfSize:16];
    [[swiftEnterButton layer]setBorderColor:[[UIColor lightGrayColor]CGColor]];
    [[swiftEnterButton layer]setBorderWidth:1.0f];
    [swiftEnterButton setTitle:@"Enter swift page" forState:UIControlStateNormal];
    [self.view addSubview:swiftEnterButton];
    [swiftEnterButton addTarget:self action:@selector(swiftEnterButtonClick:) forControlEvents:UIControlEventTouchUpInside];

    
}

- (void)ocEnterButtonClick:(UIButton *)button{
    SaasExampleController *saasExampleController = [[SaasExampleController alloc] init];
    [self.navigationController pushViewController:saasExampleController animated:YES];
    
}

- (void)swiftEnterButtonClick:(UIButton *)button{
    SwiftSaasExampleController *sSaasExampleController = [[SwiftSaasExampleController alloc] init];
    [self.navigationController pushViewController:sSaasExampleController animated:YES];
}

@end
