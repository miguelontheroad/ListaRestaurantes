//
//  GestorRestaurantes.m
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import "GestorRestaurantes.h"
#import "Restaurante.h"

@implementation GestorRestaurantes

-(NSArray *)listarRestaurantes{
    Restaurante *r1 = [[ Restaurante alloc ] initConNombre:@"Chivuos" descripcion:@"Bocadillos internacionales y cerveza artesana" longitud:2.153935 latitud:41.405009 direccion:@"Carrer de Casp, 55, 08010 Barcelona"];
    Restaurante *r2 = [[ Restaurante alloc ] initConNombre:@"Bar Centro" descripcion:@"Hamburguesas variadas" longitud:2.1728483 latitud:41.392845 direccion:@"Carrer de Casp, 55, 08010 Barcelona"];
    Restaurante *r3 = [[ Restaurante alloc ] initConNombre:@"Black Remedy" descripcion:@"Cafés de especialidad, brunch y sándwich" longitud:2.176223 latitud:41.3822707 direccion:@"Carrer de la Ciutat, 5, 08002 Barcelona"];
    Restaurante *r4 = [[ Restaurante alloc ] initConNombre:@"Café Cometa" descripcion:@"Local chic, pasteles y vermut" longitud:2.1738149 latitud:41.3866437 direccion:@"Carrer del Parlament, 20, 08015 Barcelona"];
    

    NSArray *lista = [NSArray arrayWithObjects:r1,r2,r3,r4, nil];
    return lista;
}

@end
