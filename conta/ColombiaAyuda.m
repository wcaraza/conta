//
//  ColombiaAyuda.m
//  conta
//
//  Created by Walter Caraza Barrera on 11/12/12.
//  Copyright (c) 2012 Walter Caraza Barrera. All rights reserved.
//

//
//  DetailViewController.m
//  TableView
//
//  Created by iPhone SDK Articles on 1/17/09.
//  Copyright www.iPhoneSDKArticles.com 2009.
//

#import "ColombiaAyuda.h"
#import "AppDelegate.h"
#import "DetailViewTextController.h"

@interface ColombiaAyuda ()

@end

@implementation ColombiaAyuda

- (id)initWithStyle:(UITableViewStyle)style {
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    style = UITableViewStyleGrouped;
    if (self = [super initWithStyle:style]) {
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIView *backgroundView = [[UIView alloc] initWithFrame: self.view.frame];
    backgroundView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern_062.gif"]];
    self.tableView.backgroundView = backgroundView;
    
    //Set the title
    UILabel *w = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 230, 15)];
    w.textAlignment = UITextAlignmentCenter;
    w.font = [UIFont fontWithName:@"Copperplate" size:18.0];
    w.textColor = [UIColor whiteColor];
    w.backgroundColor = [UIColor clearColor];
    w.adjustsFontSizeToFitWidth = YES;
    w.text = @"Ayuda";
    
    self.navigationItem.titleView =w;
	//self.navigationItem.title = @"Ayuda";
    
    //Add the done button.
	self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc]
                                              initWithTitle:@"Menú" style:UIBarButtonItemStylePlain target:self action:@selector(doneMenu_Clicked:)] autorelease];
    
    //self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
    //self.title = self.cellName;
    
    
}

- (void) doneMenu_Clicked:(id)sender {
	
	AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
	[mainDelegate flipToBackAyudaColombia];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    // Return the number of rows in the section.
    //return [self.details count];
    switch (section) {
        case 0:return 1;break;
        case 1:return 1;break;
        case 2:return 1;break;
    }
    return true;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //static NSString *myTextViewId = @"MyTextViewId";
    static NSString *CellIdentifier = @"detail";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
    
    switch(indexPath.section){
            
        case 0:
            if (cell == nil) {
                cell = [[[DetailViewTextController alloc] initWithFrame:CGRectZero] autorelease];
                
            }
            UITextView *textView = [[[UITextView alloc] initWithFrame:CGRectZero] autorelease];
            textView.text = @"Hispano: Cuentas contables es una aplicación creada y diseñada para dispositivos Iphone, Ipod Touch y Ipad. Esta aplicación tiene el objetivo de poder facilitar y dar a conocer de una manera concisa y puntual la información de las cuentas contables en Colombia.\n\nTodos los derechos son reservados 2013.";
            [textView setEditable:NO];
            [textView setScrollEnabled:YES];
            ((DetailViewTextController *)cell).textView = textView;
            
            
            break;
        case 1:
            
            if (cell == nil) {
                cell = [[[DetailViewTextController alloc] initWithFrame:CGRectZero] autorelease];
                
            }
            
            UITextView *textView1 = [[[UITextView alloc] initWithFrame:CGRectZero] autorelease];
            textView1.text = @"LEY 1314 DE 2009\n\nPor mandato de esta ley, el Estado, bajo la dirección del Presidente la República y por intermedio de las entidades a que hace referencia la presente ley, intervendrá la economía, limitando la libertad económica, para expedir normas contables, de información financiera y de aseguramiento de la información, que conformen un sistema único y homogéneo de alta calidad, comprensible y de forzosa observancia, por cuya virtud los informes contables y, en particular, los estados financieros, brinden información financiera comprensible, transparente y comparable, pertinente y confiable, útil para la toma de decisiones económicas por parte del Estado, los propietarios, funcionarios y empleados de las empresas, los inversionistas actuales o potenciales y otras partes interesadas, para mejorar la productividad, la competitividad y el desarrollo armónico de la actividad empresarial de las personas naturales y jurídicas, nacionales o extranjeras. Con tal finalidad, en atención al interés público, expedirá normas de contabilidad, de información financiera y de aseguramiento de información, en los términos establecidos en la presente ley.\n\nDECRETO 2650 DE 1993\n\nCAPÍTULO I - ARTICULO 1.\n\nEl plan único de cuentas busca la uniformidad en el registro de las operaciones económicas realizadas por los comerciantes con el fin de permitir la transparencia de la información contable y por consiguiente, su claridad, confiabilidad y comparabilidad.\n\nCAPÍTULO I - ARTICULO 2.\n\nEl plan único de cuentas está compuesto por un catálogo de cuentas y la descripción y dinámica para la aplicación de las mismas, las cuales deben observarse en el registro contable de todas las operaciones o transacciones económicas.\n\nCAPÍTULO I - ARTICULO 3.\n\nModificado. D.R. 2894/94, art. 1o. El catálogo de cuentas contiene la relación ordenada y clasificada de las clases, grupos, cuentas y subcuentas del activo, pasivo, patrimonio, ingresos, gastos, costo de ventas, costos de producción o de operación y cuentas de orden identificadas con un código numérico y su respectiva denominación.\n\nCAPÍTULO I - ARTICULO 4.\n\nLas descripciones expresan o detallan los conceptos de las diferentes clases, grupos y cuentas incluidas en el catálogo e indican las operaciones a registrar en cada una de las cuentas.\nLas dinámicas señalan la forma en que se deben utilizar las cuentas y realizar los diferentes movimientos contables que las afecten.";
            [textView1 setEditable:NO];
            [textView1 setScrollEnabled:YES];
            ((DetailViewTextController *)cell).textView = textView1;
            
            break;
        case 2:
            
            if (cell == nil) {
                cell = [[[DetailViewTextController alloc] initWithFrame:CGRectZero] autorelease];
                
            }
            
            UITextView *textView2 = [[[UITextView alloc] initWithFrame:CGRectZero] autorelease];
            textView2.text = @"Para cualquier ayuda y/o consulta porfavor no dude en escribirnos a nuestra pagina web http://www.3dmovil.com o a nuestro twitter: @3dmovil";
            [textView2 setEditable:NO];
            [textView2 setScrollEnabled:YES];
            ((DetailViewTextController *)cell).textView = textView2;
            
            break;
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    switch(indexPath.section){
        case 0:
            return 150;
            break;
        case 1:
            return 350;
            break;
        case 2:
            return 60;
            break;
    }
    return true;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	switch (section) {
        case 0:return @"Información de la aplicación";break;
        case 1:return @"Marco Legal en Colombia";break;
        case 2:return @"Soporte";break;
    }
    return nil;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
}



@end
