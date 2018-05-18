//
//  DetalleRestaurante.m
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import "DetalleRestaurante.h"

@interface DetalleRestaurante ()

@end

@implementation DetalleRestaurante

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Centra el mapa en una posición determinada
    CLLocationCoordinate2D location;
    location.latitude = 40.416776;
    location.longitude = -3.703789;
    //Determinamos una región centrada en las coordenadas
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location,500, 500);
    //Le pasamos la region al mapa
    [_mapa setRegion:region animated:NO];
    //Vamos a añadir un marcador en el mapa
    //MKPointAnnotation *marcador = [[MKPointAnnotation alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated{
    _labelNombre.text = _restaurante.nombre;
    _labelDescripcion.text = _restaurante.descripcion;
    _labelDireccion.text = _restaurante.direccion;
    
    //Recuperamos las coordenadas del restaurante
    //seleccionado para mostrarlas en el mapa
    CLLocationCoordinate2D location;
    location.latitude = _restaurante.latitud;
    location.longitude = _restaurante.longitud;
    //Determinamos una región centrada en las coordenadas
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location,500, 500);
    //Le pasamos la region al mapa
    [_mapa setRegion:region animated:NO];
    //Vamos a añadir un marcador en el mapa
    MKPointAnnotation *marcador = [[MKPointAnnotation alloc] init];
    //Le damos las coordenadas del restaurante
    [marcador setCoordinate:location];
    //Le damos el nombre y la descripcion
    //para mostrarlas al pinchar en el marcador
    [marcador setTitle:_restaurante.nombre];
    [marcador setSubtitle:_restaurante.direccion];
    //añadimos el marcador
    [_mapa addAnnotation:marcador];
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
