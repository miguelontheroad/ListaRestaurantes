//
//  TablaRestaurantes.m
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import "TablaRestaurantes.h"

@implementation TablaRestaurantes

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_restaurantes count ];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *idCeldaRest = @"celdaRest";
    
    UITableViewCell *celda = [tableView dequeueReusableCellWithIdentifier:idCeldaRest];
    
    if (celda == nil){
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaRest];
    }
    NSInteger fila = [ indexPath row ];
    Restaurante *rest = [ _restaurantes objectAtIndex:fila];
    [[celda textLabel] setText:[rest nombre]];
    return celda;
}

-(Restaurante *) restauranteAt:(NSInteger)pos{
    return (Restaurante *) [ _restaurantes objectAtIndex:pos];
}

@end
