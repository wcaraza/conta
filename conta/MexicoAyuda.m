//
//  DetailViewController.m
//  TableView
//
//  Created by iPhone SDK Articles on 1/17/09.
//  Copyright www.iPhoneSDKArticles.com 2009.
//

#import "MexicoAyuda.h"
#import "AppDelegate.h"
#import "DetailViewTextController.h"

@interface MexicoAyuda ()

@end

@implementation MexicoAyuda

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
	[mainDelegate flipToBackAyudaMexico];
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
            textView.text = @"Hispano: Cuentas contables es una aplicación creada y diseñada para dispositivos Iphone, Ipod Touch y Ipad. Esta aplicación tiene el objetivo de poder facilitar y dar a conocer de una manera concisa y puntual la información de las cuentas contablesen Mexico.\n\nTodos los derechos son reservados 2013.";
            [textView setEditable:NO];
            [textView setScrollEnabled:YES];
            ((DetailViewTextController *)cell).textView = textView;
            
            
            break;
        case 1:
            
            if (cell == nil) {
                cell = [[[DetailViewTextController alloc] initWithFrame:CGRectZero] autorelease];
                
            }
            
            UITextView *textView1 = [[[UITextView alloc] initWithFrame:CGRectZero] autorelease];
            textView1.text = @"La Ley de Contabilidad es de observancia obligatoria para los poderes Ejecutivo, Legislativo y Judicial de la Federación, entidades federativas; los ayuntamientos de los municipios; los órganos político‐administrativos de las demarcaciones territoriales del Distrito Federal; las entidades de la administración pública paraestatal, ya sean federales, estatales o municipales y los órganos autónomos federales y estatales.\n\nEn el marco de la Ley de Contabilidad, las entidades federativas deberán asumir una posición estratégica en las actividades de armonización para que cada uno de sus municipios logre cumplir con los objetivos que dicha ley ordena. Los gobiernos de las entidades federativas deben brindar la cooperación y asistencia necesarias a los gobiernos de sus municipios, para que éstos logren armonizar su contabilidad, con base en las decisiones que alcance el CONAC.\n\nEl presente acuerdo fue sometido a opinión del Comité Consultivo, el cual integró distintos grupos de trabajo, contando con la participación de representantes de entidades federativas, municipios, Auditoría Superior de la Federación, entidades estatales de Fiscalización, Instituto para el Desarrollo Técnico de las Haciendas Públicas, Instituto Mexicano de Contadores Públicos, Federación Nacional de la Asociación Mexicana de Contadores Públicos y Comisión Permanente de Contralores Estados‐ Federación.";
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
            return 250;
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
        case 1:return @"Marco Legal en Mexico";break;
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