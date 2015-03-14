//
//  FacebookViewController.m
//  CedoArriendo
//
//  Created by Saul Felipe Ramirez Rojas on 14/03/15.
//  Copyright (c) 2015 SafeDev. All rights reserved.
//

#import "FacebookViewController.h"

@interface FacebookViewController ()

@end

@implementation FacebookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _navegador.delegate = self;
    _navegador.hidden = YES;
    NSURL * url = [NSURL URLWithString:@"http://facebook.com"];
    NSURLRequest * request = [[NSURLRequest alloc] initWithURL:url];
    
    [_navegador loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{

    _navegador.hidden = NO;
    
    NSString * js = @"alert('Hoja desde JS');";
    [_navegador stringByEvaluatingJavaScriptFromString:js];
    
}
- (IBAction)btnVolver:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
