//
//  Restaurante.m
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import "Restaurante.h"

@implementation Restaurante

-(id)initConNombre:(NSString *)nombre descripcion:(NSString *)descripcion longitud:(double)longitud latitud:(double)latitud direccion:(NSString *)direccion{
    if ( self = [ super init ]) {
        _nombre = nombre;
        _descripcion = descripcion;
        _longitud = longitud;
        _latitud = latitud;
        _direccion = direccion;
    }
    return self;
}

@end
