//
//  TablaRestaurantes.h
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "Restaurante.h"

@interface TablaRestaurantes : NSObject<UITableViewDataSource>

@property NSArray *restaurantes;

-(Restaurante *) restauranteAt:(NSInteger) pos;


@end

