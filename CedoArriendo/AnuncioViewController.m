//
//  AnuncioViewController.m
//  CedoArriendo
//
//  Created by Saul Felipe Ramirez Rojas on 14/03/15.
//  Copyright (c) 2015 SafeDev. All rights reserved.
//

#import "AnuncioViewController.h"

@interface AnuncioViewController ()

@end

@implementation AnuncioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnGuardar:(id)sender {
    UIAlertView * save = [[UIAlertView alloc] initWithTitle:@"Guardando Informacion" message:@"Su inmueble ha sido guardado" delegate:nil  cancelButtonTitle:@"Cancelar" otherButtonTitles:nil, nil];
    
    [save show];
    
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
