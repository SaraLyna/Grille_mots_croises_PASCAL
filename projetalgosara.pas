program fouillisara;{nom du programme}
uses
 wincrt;{une des unit‚s reconnues par le compilateur}
 {d‚claration des structures de donn‚es n‚cessaires}
const   NB_ligne=15;
NB_colonne=15;
type
Gr= array[1..NB_ligne,1..NB_colonne]of char;
T= array[1..39] of string;
var Grille: Gr;
TabMot : T;
procedure RempGr (var Grille:Gr);{la proc‚dure qui permettra de remplir la grille: Grille , de sorte … avoir une grille pr‚-remplie}
begin
	{le remplissage de la grille se fera grace … des affectations}
Grille[1,1]:='S';
Grille[1,2]:='E';
Grille[1,3]:='N';
Grille[1,4]:='I';
Grille[1,5]:='H';
Grille[1,6]:='T';
Grille[1,7]:='N';
Grille[1,8]:='A';
Grille[1,9]:='X';
Grille[1,10]:='A';
Grille[1,11]:='N';
Grille[1,12]:='T';
Grille[1,13]:='H';
Grille[1,14]:='I';
Grille[1,15]:='E';
Grille[2,1]:='E';
Grille[2,2]:='B';
Grille[2,3]:='T';
Grille[2,4]:='E';
Grille[2,5]:='U';
Grille[2,6]:='O';
Grille[2,7]:='M';
Grille[2,8]:='Y';
Grille[2,9]:='I';
Grille[2,10]:='I';
Grille[2,11]:='T';
Grille[2,12]:='I';
Grille[2,13]:='N';
Grille[2,14]:='T';
Grille[2,15]:='X';
Grille[3,1]:='S';
Grille[3,2]:='A';
Grille[3,3]:='U';
Grille[3,4]:='O';
Grille[3,5]:='T';
Grille[3,6]:='O';
Grille[3,7]:='L';
Grille[3,8]:='M';
Grille[3,9]:='P';
Grille[3,10]:='R';
Grille[3,11]:='M';
Grille[3,12]:='O';
Grille[3,13]:='T';
Grille[3,14]:='U';
Grille[3,15]:='A';
Grille[4,1]:='S';
Grille[4,2]:='R';
Grille[4,3]:='T';
Grille[4,4]:='A';
Grille[4,5]:='U';
Grille[4,6]:='O';
Grille[4,7]:='P';
Grille[4,8]:='A';
Grille[4,9]:='H';
Grille[4,10]:='A';
Grille[4,11]:='E';
Grille[4,12]:='E';
Grille[4,13]:='U';
Grille[4,14]:='A';
Grille[4,15]:='T';
Grille[5,1]:='E';
Grille[5,2]:='A';
Grille[5,3]:='G';
Grille[5,4]:='R';
Grille[5,5]:='C';
Grille[5,6]:='O';
Grille[5,7]:='R';
Grille[5,8]:='A';
Grille[5,9]:='O';
Grille[5,10]:='E';
Grille[5,11]:='S';
Grille[5,12]:='L';
Grille[5,13]:='N';
Grille[5,14]:='R';
Grille[5,15]:='M';
Grille[6,1]:='C';
Grille[6,2]:='E';
Grille[6,3]:='E';
Grille[6,4]:='O';
Grille[6,5]:='R';
Grille[6,6]:='T';
Grille[6,7]:='B';
Grille[6,8]:='O';
Grille[6,9]:='I';
Grille[6,10]:='N';
Grille[6,11]:='C';
Grille[6,12]:='S';
Grille[6,13]:='L';
Grille[6,14]:='I';
Grille[6,15]:='S';
Grille[7,1]:='N';
Grille[7,2]:='U';
Grille[7,3]:='P';
Grille[7,4]:='T';
Grille[7,5]:='I';
Grille[7,6]:='I';
Grille[7,7]:='S';
Grille[7,8]:='T';
Grille[7,9]:='D';
Grille[7,10]:='A';
Grille[7,11]:='N';
Grille[7,12]:='T';
Grille[7,13]:='I';
Grille[7,14]:='E';
Grille[7,15]:='E';
Grille[8,1]:='X';
Grille[8,2]:='E';
Grille[8,3]:='A';
Grille[8,4]:='C';
Grille[8,5]:='L';
Grille[8,6]:='T';
Grille[8,7]:='E';
Grille[8,8]:='T';
Grille[8,9]:='I';
Grille[8,10]:='L';
Grille[8,11]:='I';
Grille[8,12]:='C';
Grille[8,13]:='A';
Grille[8,14]:='F';
Grille[8,15]:='S';
Grille[9,1]:='S';
Grille[9,2]:='N';
Grille[9,3]:='U';
Grille[9,4]:='L';
Grille[9,5]:='L';
Grille[9,6]:='S';
Grille[9,7]:='E';
Grille[9,8]:='R';
Grille[9,9]:='E';
Grille[9,10]:='I';
Grille[9,11]:='T';
Grille[9,12]:='N';
Grille[9,13]:='E';
Grille[9,14]:='R';
Grille[9,15]:='S';
Grille[10,1]:='T';
Grille[10,2]:='L';
Grille[10,3]:='E';
Grille[10,4]:='A';
Grille[10,5]:='E';
Grille[10,6]:='I';
Grille[10,7]:='N';
Grille[10,8]:='E';
Grille[10,9]:='N';
Grille[10,10]:='I';
Grille[10,11]:='V';
Grille[10,12]:='E';
Grille[10,13]:='A';
Grille[10,14]:='U';
Grille[10,15]:='E';
Grille[11,1]:='E';
Grille[11,2]:='U';
Grille[11,3]:='R';
Grille[11,4]:='M';
Grille[11,5]:='T';
Grille[11,6]:='N';
Grille[11,7]:='E';
Grille[11,8]:='M';
Grille[11,9]:='E';
Grille[11,10]:='L';
Grille[11,11]:='P';
Grille[11,12]:='M';
Grille[11,13]:='O';
Grille[11,14]:='C';
Grille[11,15]:='N';
Grille[12,1]:='R';
Grille[12,2]:='G';
Grille[12,3]:='U';
Grille[12,4]:='E';
Grille[12,5]:='T';
Grille[12,6]:='S';
Grille[12,7]:='I';
Grille[12,8]:='A';
Grille[12,9]:='L';
Grille[12,10]:='E';
Grille[12,11]:='D';
Grille[12,12]:='R';
Grille[12,13]:='O';
Grille[12,14]:='B';
Grille[12,15]:='I';
Grille[13,1]:='E';
Grille[13,2]:='E';
Grille[13,3]:='T';
Grille[13,4]:='U';
Grille[13,5]:='E';
Grille[13,6]:='C';
Grille[13,7]:='L';
Grille[13,8]:='A';
Grille[13,9]:='Y';
Grille[13,10]:='O';
Grille[13,11]:='N';
Grille[13,12]:='N';
Grille[13,13]:='A';
Grille[13,14]:='G';
Grille[13,15]:='E';
Grille[14,1]:='R';
Grille[14,2]:='S';
Grille[14,3]:='A';
Grille[14,4]:='R';
Grille[14,5]:='S';
Grille[14,6]:='R';
Grille[14,7]:='E';
Grille[14,8]:='E';
Grille[14,9]:='X';
Grille[14,10]:='A';
Grille[14,11]:='M';
Grille[14,12]:='I';
Grille[14,13]:='N';
Grille[14,14]:='E';
Grille[14,15]:='N';
Grille[15,1]:='S';
Grille[15,2]:='T';
Grille[15,3]:='N';
Grille[15,4]:='A';
Grille[15,5]:='T';
Grille[15,6]:='U';
Grille[15,7]:='B';
Grille[15,8]:='E';
Grille[15,9]:='D';
Grille[15,10]:='E';
Grille[15,11]:='D';
Grille[15,12]:='I';
Grille[15,13]:='L';
Grille[15,14]:='O';
Grille[15,15]:='S';
{225 affectations pour pr‚ciser}
end;{fin de la premiŠre proc‚dure}
procedure AffichGr(var  Grille: Gr);{deuxiŠme proc‚dure qui permettra cette fois d'afficher la grille pr‚-remplie}
var
i,j:integer;
begin
	writeln('____________');
	writeln('-----------------Voici votre Grille:------------------');
	write('_____________________________________________');
	writeln;
	{l'affichage se fera grace … deux boucles ''POUR''}
	for i:=1 to NB_ligne do
	begin
	for j:=1 to NB_colonne do
	begin
		write('_');
		write(Grille[i,j],'|');
    end;
      writeln;
    end;
	
end;{fin de la deuxiŠme proc‚dure}
procedure RempTabMot(var TabMot:T);{troisiŠme proc‚dure qui permettra de remplir un tableau :T, des 39 mots … rechercher , et par la suite afficher ce tableau}
var k:integer;
begin
writeln('--------------------Voici le tableau des mots … rechercher:---------------------');
writeln;
	{39 affectations ont ‚t‚ utilis‚es}
TabMot [1]:='XANTHINES';
TabMot [2]:= 'AIRELLES';
TabMot [3]:='TOUT';
TabMot [4]:='DEBUTANTS';
TabMot [5]:='RENTIERES';
TabMot [6]:='REEXAMINE';
TabMot [7]:='RILLETTES';
TabMot [8]:='FACILITE';
TabMot [9]:='HECTARE';
TabMot [10]:='ATH';
TabMot [11]:='ESSES';
TabMot [12]:='NEGATON';
TabMot [13]:='XIPHOIDIEN';
TabMot [14]:='XANTHIE';
TabMot [15]:='ATOURS';
TabMot [16]:='IMPORTANT';
TabMot [17]:='STERER';
TabMot [18]:='UN';
TabMot [19]:='CLAYONNAGE';
TabMot [20]:='CLAMEUR';
TabMot [21]:='ESSENIENS';
TabMot [22]:='HABILLEUR';
TabMot [23]:='TAXE';
TabMot [24]:='ARABE';
TabMot [25]:='NIVEAU';
TabMot [26]:='XYLENE';
TabMot [27]:='XIMENIE';
TabMot [28]:='AMOUREUX';
TabMot [29]:='PASSIFS';
TabMot [30]:='LUGES';
TabMot [31]:='COMPLEMENT';
TabMot [32]:='BORDELAIS';
TabMot [33]:='NATURE';
TabMot [34]:='SOLIDE';
TabMot [35]:='PARTICULE';
TabMot [36]:='MATIN';
TabMot [37]:='SATI';
TabMot [38]:='HEURE';
TabMot [39]:='XYLOCOPES';
for k:=1 to 39 do
begin
	writeln;
	writeln('____________');
	writeln(TabMot[k]);
	
end;
writeln;
end;{fin de la troisiŠme proc‚dure}

procedure RechMot(var Grille: Gr;var TabMot:T);{ recherche un mot dans la grille caractŠre par caractŠre dans toutes
les directions. Aussit“t le mot est retrouv‚ il change de couleur et la grille est
affich‚e. Cette derniŠre doit s'afficher … chaque fois qu'un mot est trouv‚.}

var i,j:integer;
begin
end;

procedure RechCar(var Grille:Gr);{ recherche les caractŠres restants (non utilis‚s) dans la grille. La
recherche se fera ligne par ligne afin de retrouver le mot, dont la d‚finition est
® Une ville Alg‚rienne ¯, et l'afficher.}
var i,j:integer;
begin
	end;


begin
	{maintenant il est temps de faire appel aux proc‚dures d‚clar‚es en haut}
	RempGr(Grille);{remplissage de la grille}
RempTabMot(TabMot);{remplissage du tableau des mots … rechercher et affichage du tableau par la meme occasion}
	AffichGr(Grille);{affichage de la grille }
	writeln('');
	write('_____________________________________________');
	writeln();
	RechMot(Grille,TabMot);{recherche les mots}
	RechCar(Grille);{recherche les caractŠres restants}
	
end.