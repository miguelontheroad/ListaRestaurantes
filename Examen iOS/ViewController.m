//
//  ViewController.m
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import "ViewController.h"
#import "DetalleRestaurante.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gestorRest = [[ GestorRestaurantes alloc ] init];
    _tabla = [[TablaRestaurantes alloc] init];
    [_tablaRestaurantes setDataSource:_tabla];
    [_tablaRestaurantes setDelegate:self];
}

-(void)viewWillAppear:(BOOL)animated{
    [_tabla setRestaurantes:[_gestorRest listarRestaurantes]];
    [_tablaRestaurantes reloadData];
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Restaurante *r = [ _tabla restauranteAt:[indexPath row]];
    [ self performSegueWithIdentifier:@"VerDetalle" sender:r];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier]isEqualToString:@"VerDetalle"]) {
        if ([sender isKindOfClass:[Restaurante class]]){
            DetalleRestaurante *dr = (DetalleRestaurante *)[segue destinationViewController];
            [dr setRestaurante:(Restaurante *)sender];
        }
    }
}

-(IBAction)volverAController1:(UIStoryboardSegue *)segue{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
