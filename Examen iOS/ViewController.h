//
//  ViewController.h
//  Examen iOS
//
//  Created by user137716 on 07/05/2018.
//  Copyright © 2018 user137716. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TablaRestaurantes.h"
#import "GestorRestaurantes.h"

@interface ViewController : UIViewController<UITableViewDelegate>

{
    TablaRestaurantes *_tabla;
    GestorRestaurantes *_gestorRest;
}

@property IBOutlet UITableView *tablaRestaurantes;


@end

