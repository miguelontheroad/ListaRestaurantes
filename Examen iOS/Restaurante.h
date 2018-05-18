//
//  Restaurante.h
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurante : NSObject

@property NSString *nombre;
@property NSString *descripcion;
@property double longitud;
@property double latitud;

//Como extra, le añado la direccion del restaurante

@property NSString *direccion;

-(id) initConNombre:(NSString *)nombre
             descripcion:(NSString *)descripcion
              longitud:(double)longitud
          latitud:(double)latitud
          direccion:(NSString *)direccion;

@end
