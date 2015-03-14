//
//  ViewController.m
//  CedoArriendo
//
//  Created by Saul Felipe Ramirez Rojas on 14/03/15.
//  Copyright (c) 2015 SafeDev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    [self.tabBarItem setTitle:@"Buscar"];
    [self.tabBarItem setImage:[UIImage imageNamed:@"ic_search"]];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
