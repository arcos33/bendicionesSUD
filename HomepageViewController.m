//
//  HomepageViewController.m
//  Bendiciones Ordenanzas Sacerdocio SUD
//
//  Created by Joel on 3/16/14.
//  Copyright (c) 2014 app-candi. All rights reserved.
//

#import "HomepageViewController.h"
#import "Blessing.h"
#import "OrganizacionViewController.h"



@interface HomepageViewController ()

@end

@implementation HomepageViewController
@synthesize blessingsArray;
@synthesize mainBlessingsArray;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    //self.blessingsArray = @[@"Bautismo", @"Confirmacion", @"Nombre y Bendicion de niños", @"Santa Cena", @"Consagrar Aceite", @"Bendecir a los Enfermos", @"Conferir el Sacerdocio", @"Bendicion de Consuelo & Consejo", @"Dedicar Sepulturas", @"Apartir oficiales y maestros", @"Dedicar hogares", @"Bendicion Patriarcal"];
    [self loadBlessingNames];

    [toBendiciones addSubview:toOrganizacionImageView];
}



- (void)loadBlessingNames{
    self.mainBlessingsArray = [[NSMutableArray alloc] init];
    self.blessing = [[Blessing alloc] init];
    
    self.blessing.name = @"Bautismo";
    self.blessing.description = @"Pronuncia el nombre completo de la persona y dice:\n\n “Habiendo sido comisionado por Jesucristo, yo te bautizo en el nombre del Padre, y del Hijo, y del Espíritu Santo. Amén” (D. y C. 20:73).";
    [self.mainBlessingsArray addObject:self.blessing];
    //hello
    //hello
    

    
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Confirmacion";
    self.blessing.description = @" 1. Pronuncia el nombre completo de la persona.\n\n 2. Declara que la ordenanza se efectúa por la autoridad del Sacerdocio de Melquisedec.\n\n 3. Confirma a la persona miembro de La Iglesia de Jesucristo de los Santos de los Últimos Días.\n\n 4. Usa las palabras “Recibe el Espíritu Santo” (no “recibe el don del Espíritu Santo”)\n\n 5. Da palabras de bendición, según le indique el Espíritu.\n\n 6. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Nombre y Bendicion de niños";
    self.blessing.description = @"1. Se dirige al Padre Celestial.\n\n 2. Declara que la bendición se efectúa por la autoridad del Sacerdocio de Melquisedec.\n\n 3. Da el nombre al niño o a la niña.\n\n 4. Pronuncia palabras de bendición de acuerdo con lo que le indique el Espíritu.\n\n 5. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Santa Cena";
    self.blessing.description = @"PAN\n\n Oh Dios, Padre Eterno, en el nombre de Jesucristo, tu Hijo, te pedimos que bendigas y santifiques este pan para las almas de todos los que participen de él, para que lo coman en memoria del cuerpo de tu Hijo, y testifiquen ante ti, oh Dios, Padre Eterno, que están dispuestos a tomar sobre sí el nombre de tu Hijo, y a recordarle siempre, y a guardar sus mandamientos que él les ha dado, para que siempre puedan tener su Espíritu consigo. Amén.\n\n AGUA\n\n Oh Dios, Padre Eterno, en el nombre de Jesucristo, tu Hijo, te pedimos que bendigas y santifiques esta agua para las almas de todos los que lo beban, para que lo hagan en memoria de la sangre de tu Hijo, que por ellos se derramó; para que testifiquen ante ti, oh Dios, Padre Eterno, que siempre se acuerdan de él, para que puedan tener su Espíritu consigo. Amén.";
        [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Consagrar Aceite";
    self.blessing.description = @"1. Sostiene un recipiente abierto que contenga aceite de oliva.\n\n 2. Se dirige al Padre Celestial. 3. Declara que actúa por la autoridad del Sacerdocio de Melquisedec.\n\n 4. Consagra el aceite (no el recipiente) y lo aparta para la unción y la bendición de los enfermos y afligidos.\n\n 5. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Bendecir a los Enfermos";
    self.blessing.description =
     @"UNGIR CON ACEITE\n\n 1. Pon una gota de aceite consagrado sobre la cabeza de la persona.\n\n 2. Coloca las manos levemente sobre la cabeza de la persona y la llama por su nombre completo.\n\n 3. Declara que actúa por la autoridad del Sacerdocio de Melquisedec.\n\n 4. Declara que está ungiendo con aceite que ha sido consagrado para la unción y bendición de los enfermos y los afligidos.\n\n 5. Termina en el nombre de Jesucristo.\n\n SELLAR LA UNCION\n\n (Normalmente dos o más poseedores del Sacerdocio de Melquisedec colocan levemente las manos sobre la cabeza de la persona.)\n\n 1. Llama a la persona por su nombre completo.\n\n 2. Declara que está sellando la unción por la autoridad del Sacerdocio de Melquisedec.\n\n 3. Da palabras de bendición según le indique el Espírtu.\n\n 4. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Conferir el Sacerdocio";
    self.blessing.description = @"Para efectuar una ordenación en el sacerdocio\n\n 1. Llama a la persona por su nombre completo.\n\n 2. Declara la autoridad por la cual se efectúa la ordenación (el Sacerdocio Aarónico o el de Melquisedec).\n\n 3. Confiere el Sacerdocio Aarónico o el de Melquisedec, a menos que ya se haya conferido.\n\n 4. Ordena a la persona a un oficio en el Sacerdocio Aarónico o del de Melquisedec y confiere los derechos, los poderes y la autoridad de ese oficio. (No se confieren llaves del sacerdocio al conferir el sacerdocio o al ordenar a uno de estos oficios.)\n\n 5. Da palabras de bendición, según le indique el Espíritu.\n\n 6. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Bendicion de Consuelo/Consejo";
    self.blessing.description = @"1. Llama a la persona por su nombre completo.\n\n 2. Declara que la bendición se efectúa por la autoridad del Sacerdocio de Melquisedec.\n\n 3. Da palabras de bendición, según le indique el Espíritu.\n\n 4. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Dedicar Sepulturas";
    self.blessing.description = @"1. Se dirige al Padre Celestial.\n\n 2. Declara que está actuando por la autoridad del Sacerdocio de Melquisedec.\n\n  3. Dedica y consagra la sepultura como lugar de descanso para el cuerpo del difunto.\n\n 4. Ora para que el lugar permanezca sagrado y protegido hasta la Resurrección (donde resulte apropiado).\n\n 5. Pide al Señor que consuele a la familia y expresa pensamientos que el Espíritu le indique.\n\n 6. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Apartar oficiales y maestros";
    self.blessing.description = @"1. Llama a la persona por su nombre completo.\n\n 2. Declara que está obrando por la autoridad del Sacerdocio de Melquisedec.\n\n 3. Aparta a la persona al debido oficio en la estaca, en el barrio, en el quórum, en el grupo de sumos sacerdotes o en la clase.\n\n 4. Confiere llaves si la persona tiene derecho a recibirlas. (En las estacas y en los barrios, sólo los presidentes de estaca, los obispos y los presidentes de quórum reciben llaves de presidencia cuando son apartados. La palabra llaves no debe emplearse al apartar a consejeros, miembros del sumo consejo, líderes del grupo de sumos sacerdotes, presidentes de organizaciones auxiliares, asistentes del obispo en el quórum de presbíteros ni a maestros de una organización.)\n\n 5. Da palabras de bendición según lo dirija el Espíritu.\n\n 6. Termina en el nombre de Jesucristo.";
    [self.mainBlessingsArray addObject:self.blessing];
    
    self.blessing = [[Blessing alloc] init];
    self.blessing.name = @"Dedicar hogares";
    self.blessing.description = @"Se puede ofrecer como una oración o se puede efectuar por la autoridad del sacerdocio.\n\nUsar palabras según lo indique el Espíritu \n\n(Ejemplo: donde el Santo Espíritu pueda morar y donde los miembros de la familia puedan adorar, hallar refugio del mundo, crecer espiritualmente y prepararse para tener relaciones familiares eternas.)";
    [self.mainBlessingsArray addObject:self.blessing];
    
    for (Blessing *blessing in mainBlessingsArray) {
        NSLog(@"name = %@", blessing.name);
    }
    
}

-   (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-   (NSInteger)tableView:(UITableView *)tableview numberOfRowsInSection:(NSInteger)section
{
    return [self.mainBlessingsArray count];
}

-   (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"identifier"];
    }
    cellBlessing = [self.mainBlessingsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = cellBlessing.name;

    NSLog(@"description = %@", cellBlessing.description);
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        UITableViewCell *cell = (UITableViewCell *)sender;
        NSIndexPath *index = [tableview indexPathForCell:cell];
        Blessing *blessing = self.mainBlessingsArray[index.row];
        DetailViewController *viewController = (DetailViewController *)segue.destinationViewController;
        viewController.blessing = blessing;
    
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)toOrganizacion:(id)sender
{
    [self animateOrganizacionButton];
    [self performSelector:@selector(toOrganizacion) withObject:nil afterDelay:.3];
    
}

-  (void)toOrganizacion
{
    UIStoryboard *storyboard = self.storyboard;
    OrganizacionViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:@"organizacion"];
    [self presentViewController:viewController animated:YES completion:nil];
}
- (IBAction)toInfo:(id)sender
{
    
}


- (void)animateOrganizacionButton
{
    toOrganizacion.transform = CGAffineTransformScale(CGAffineTransformIdentity, 0.001, 0.001);
    
    //imgView is your UIImageView where you set an image
    [UIView animateWithDuration:0.3/1.5 animations:^{
        toOrganizacion.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3/2 animations:^{
            toOrganizacion.transform = CGAffineTransformScale(CGAffineTransformIdentity, 1.1, 1.1);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3/2 animations:^{
                toOrganizacion.transform = CGAffineTransformIdentity;
            }];
        }];
    }];
}


@end
