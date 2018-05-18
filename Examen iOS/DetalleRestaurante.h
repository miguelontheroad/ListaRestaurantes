//
//  DetalleRestaurante.h
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Restaurante.h"

@interface DetalleRestaurante : UIViewController

@property Restaurante *restaurante;

@property IBOutlet UILabel *labelNombre;
@property IBOutlet UILabel *labelDescripcion;

@property IBOutlet MKMapView *mapa;

//Como extra, muestro en el detalle la direccion del restaurante
@property IBOutlet UILabel *labelDireccion;


@end
