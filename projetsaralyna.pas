Program fouillisaralyna;{nom du programme}
Uses crt;{une des unit‚s reconnues par le compilateur}
 {d‚claration des structures de donn‚es n‚cessaires}
Const 
    NB_ligne = 14;
    NB_colonne = 14;
Type 
    Gr = array[-1..NB_ligne,-1..NB_colonne] Of char;
    T = array[1..40] Of string;
    S = array[-1..NB_ligne,-1..NB_colonne] Of char;
    {matrice essentielle pour afficher le dernier mot … trouver}
Var 
    j,i,l,trouve,jj,ii,R,O,v,x,w,i1,i2,j1,j2,f,u,d,a,b : integer;
    grille : Gr; {matrice qui fera office de grille principale pour le fouillis}
    TabMot : T; {tableau des mots … rechercher}
    sara : S; {matrice pour le dernier mot}


Procedure clignoter(g:String);
{Proc‚dure cr‚‚e pour faire clignoter un message }
Begin
    write('                                   ');
    a := wherex;
    b := wherey;
    Repeat
        write(g);
        GoToXY(a, b);
        Delay(150);
        ClrEol;
        Delay(150);
    Until KeyPressed;
End;
Procedure RempGr ;



{la proc‚dure qui permettra de remplir la grille: grille , de sorte … avoir une grille pr‚-remplie}
Begin
 {le remplissage de la grille se fera grace … des affectations}
    grille[0][0] := 'S';
    grille[0][1] := 'E';
    grille[0][3] := 'I';
    grille[0][2] := 'N';
    grille[0][4] := 'H';
    grille[0][5] := 'T';
    grille[0][6] := 'N';
    grille[0][7] := 'A';
    grille[1][0] := 'E';
    grille[1][1] := 'B';
    grille[1][3] := 'E';
    grille[1][2] := 'T';
    grille[1][4] := 'U';
    grille[1][5] := 'O';
    grille[1][6] := 'M';
    grille[1][7] := 'Y';
    grille[2][0] := 'S';
    grille[2][1] := 'A';
    grille[2][3] := 'O';
    grille[2][2] := 'U';
    grille[2][4] := 'T';
    grille[2][5] := 'O';
    grille[2][6] := 'L';
    grille[2][7] := 'M';
    grille[3][0] := 'S';
    grille[3][1] := 'R';
    grille[3][3] := 'A';
    grille[3][2] := 'T';
    grille[3][4] := 'U';
    grille[3][5] := 'O';
    grille[3][6] := 'P';
    grille[3][7] := 'A';
    grille[4][0] := 'E';
    grille[4][1] := 'A';
    grille[4][3] := 'R';
    grille[4][2] := 'G';
    grille[4][4] := 'C';
    grille[4][5] := 'O';
    grille[4][6] := 'R';
    grille[4][7] := 'A';
    grille[5][0] := 'C';
    grille[5][1] := 'E';
    grille[5][3] := 'O';
    grille[5][2] := 'E';
    grille[5][4] := 'R';
    grille[5][5] := 'T';
    grille[5][6] := 'B';
    grille[5][7] := 'O';
    grille[6][0] := 'N';
    grille[6][1] := 'U';
    grille[6][3] := 'T';
    grille[6][2] := 'P';
    grille[6][4] := 'I';
    grille[6][5] := 'I';
    grille[6][6] := 'S';
    grille[6][7] := 'T';
    grille[7][0] := 'X';
    grille[7][1] := 'E';
    grille[7][3] := 'C';
    grille[7][2] := 'A';
    grille[7][4] := 'L';
    grille[7][5] := 'T';
    grille[7][6] := 'E';
    grille[7][7] := 'T';
    grille[8][0] := 'S';
    grille[8][1] := 'N';
    grille[8][3] := 'L';
    grille[8][2] := 'U';
    grille[8][4] := 'L';
    grille[8][5] := 'S';
    grille[8][6] := 'E';
    grille[8][7] := 'R';
    grille[9][0] := 'T';
    grille[9][1] := 'L';
    grille[9][3] := 'A';
    grille[9][2] := 'E';
    grille[9][4] := 'E';
    grille[9][5] := 'I';
    grille[9][6] := 'N';
    grille[9][7] := 'E';
    grille[10][0] := 'E';
    grille[10][1] := 'U';
    grille[10][3] := 'M';
    grille[10][2] := 'R';
    grille[10][4] := 'T';
    grille[10][5] := 'N';
    grille[10][6] := 'E';
    grille[10][7] := 'M';
    grille[11][0] := 'R';
    grille[11][1] := 'G';
    grille[11][3] := 'E';
    grille[11][2] := 'U';
    grille[11][4] := 'T';
    grille[11][5] := 'S';
    grille[11][6] := 'I';
    grille[11][7] := 'A';
    grille[12][0] := 'E';
    grille[12][1] := 'E';
    grille[12][3] := 'U';
    grille[12][2] := 'T';
    grille[12][4] := 'E';
    grille[12][5] := 'C';
    grille[12][6] := 'L';
    grille[12][7] := 'A';
    grille[13][0] := 'R';
    grille[13][1] := 'S';
    grille[13][3] := 'R';
    grille[13][2] := 'A';
    grille[13][4] := 'S';
    grille[13][5] := 'R';
    grille[13][6] := 'E';
    grille[13][7] := 'E';
    grille[14][0] := 'S';
    grille[14][1] := 'T';
    grille[14][3] := 'A';
    grille[14][2] := 'N';
    grille[14][4] := 'T';
    grille[14][5] := 'U';
    grille[14][6] := 'B';
    grille[14][7] := 'E';
    grille[0][8] := 'X';
    grille[0][9] := 'A';
    grille[0][10] := 'N';
    grille[0][11] := 'T';
    grille[0][12] := 'H';
    grille[0][13] := 'I';
    grille[0][14] := 'E';
    grille[1][8] := 'I';
    grille[1][9] := 'I';
    grille[1][10] := 'T';
    grille[1][11] := 'I';
    grille[1][12] := 'N';
    grille[1][13] := 'T';
    grille[1][14] := 'X';
    grille[2][8] := 'P';
    grille[2][9] := 'R';
    grille[2][10] := 'M';
    grille[2][11] := 'O';
    grille[2][12] := 'T';
    grille[2][13] := 'U';
    grille[2][14] := 'A';
    grille[3][8] := 'H';
    grille[3][9] := 'A';
    grille[3][10] := 'E';
    grille[3][11] := 'E';
    grille[3][12] := 'U';
    grille[3][13] := 'A';
    grille[3][14] := 'T';
    grille[4][8] := 'O';
    grille[4][9] := 'E';
    grille[4][10] := 'S';
    grille[4][11] := 'L';
    grille[4][12] := 'N';
    grille[4][13] := 'R';
    grille[4][14] := 'M';
    grille[5][8] := 'I';
    grille[5][9] := 'N';
    grille[5][10] := 'C';
    grille[5][11] := 'S';
    grille[5][12] := 'L';
    grille[5][13] := 'I';
    grille[5][14] := 'S';
    grille[6][8] := 'D';
    grille[6][9] := 'A';
    grille[6][10] := 'N';
    grille[6][11] := 'T';
    grille[6][12] := 'I';
    grille[6][13] := 'E';
    grille[6][14] := 'E';
    grille[7][8] := 'I';
    grille[7][9] := 'L';
    grille[7][10] := 'I';
    grille[7][11] := 'C';
    grille[7][12] := 'A';
    grille[7][13] := 'F';
    grille[7][14] := 'S';
    grille[8][8] := 'E';
    grille[8][9] := 'I';
    grille[8][10] := 'T';
    grille[8][11] := 'N';
    grille[8][12] := 'E';
    grille[8][13] := 'R';
    grille[8][14] := 'S';
    grille[9][8] := 'N';
    grille[9][9] := 'I';
    grille[9][10] := 'V';
    grille[9][11] := 'E';
    grille[9][12] := 'A';
    grille[9][13] := 'U';
    grille[9][14] := 'E';
    grille[10][8] := 'E';
    grille[10][9] := 'L';
    grille[10][10] := 'P';
    grille[10][11] := 'M';
    grille[10][12] := 'O';
    grille[10][13] := 'C';
    grille[10][14] := 'N';
    grille[11][8] := 'L';
    grille[11][9] := 'E';
    grille[11][10] := 'D';
    grille[11][11] := 'R';
    grille[11][12] := 'O';
    grille[11][13] := 'B';
    grille[11][14] := 'I';
    grille[12][8] := 'Y';
    grille[12][9] := 'O';
    grille[12][10] := 'N';
    grille[12][11] := 'N';
    grille[12][12] := 'A';
    grille[12][13] := 'G';
    grille[12][14] := 'E';
    grille[13][8] := 'X';
    grille[13][9] := 'A';
    grille[13][10] := 'M';
    grille[13][11] := 'I';
    grille[13][12] := 'N';
    grille[13][13] := 'E';
    grille[13][14] := 'N';
    grille[14][8] := 'D';
    grille[14][9] := 'E';
    grille[14][10] := 'D';
    grille[14][11] := 'I';
    grille[14][12] := 'L';
    grille[14][13] := 'O';
    grille[14][14] := 'S';
{225 affectations manuelles pour pr‚ciser}
End;{fin de la premiŠre proc‚dure}
Procedure AffichGr;
{deuxiŠme proc‚dure qui permettra cette fois d'afficher la grille pr‚-remplie}
Begin
    TextAttr := $0d;
    writeln('____________');
    writeln('-----------------VOICI VOTRE GRILLE:------------------');
    write('  ____________________________________________');
    writeln;
 {l'affichage se fera grace … deux boucles ''POUR''}
    For i:=1 To NB_ligne Do
        Begin
            For j:=1 To NB_colonne Do
                Begin
                    write('_');
                    write(grille[i,j],'|');
                End;
            writeln;
        End;

End;{fin de la deuxiŠme proc‚dure}
Procedure RempTabMot;



{troisiŠme proc‚dure qui permettra de remplir un tableau :T, des 39 mots … rechercher , et par la suite afficher ce tableau}
Var 
    k : integer;
Begin
    writeln('--------------------VOICI LE TABLEAU DES MOTS A RECHERCHER:---------------------');
    writeln;
 {39 affectations ont ‚t‚ utilis‚es}
    TabMot [1] := 'XANTHINES';
    TabMot [2] := 'AIRELLES';
    TabMot [3] := 'TOUT';
    TabMot [4] := 'DEBUTANTS';
    TabMot [5] := 'RENTIERES';
    TabMot [6] := 'REEXAMINE';
    TabMot [7] := 'RILLETTES';
    TabMot [8] := 'FACILITE';
    TabMot [9] := 'HECTARE';
    TabMot [10] := 'ATH';
    TabMot [11] := 'ESSES';
    TabMot [12] := 'NEGATON';
    TabMot [13] := 'XIPHOIDIEN';
    TabMot [14] := 'XANTHIE';
    TabMot [15] := 'ATOURS';
    TabMot [16] := 'IMPORTANT';
    TabMot [17] := 'STERER';
    TabMot [18] := 'UN';
    TabMot [19] := 'CLAYONNAGE';
    TabMot [20] := 'CLAMEUR';
    TabMot [21] := 'ESSENIENS';
    TabMot [22] := 'HABILLEUR';
    TabMot [23] := 'TAXE';
    TabMot [24] := 'ARABE';
    TabMot [25] := 'NIVEAU';
    TabMot [26] := 'XYLENE';
    TabMot [27] := 'XIMENIE';
    TabMot [28] := 'AMOUREUX';
    TabMot [29] := 'PASSIFS';
    TabMot [30] := 'LUGES';
    TabMot [31] := 'COMPLEMENT';
    TabMot [32] := 'BORDELAIS';
    TabMot [33] := 'NATURE';
    TabMot [34] := 'SOLIDE';
    TabMot [35] := 'PARTICULE';
    TabMot [36] := 'MATIN';
    TabMot [37] := 'SATI';
    TabMot [38] := 'HEURE';
    TabMot [39] := 'XYLOCOPES';
    For k:=1 To 39 Do
        Begin
            writeln;
            writeln('____________');
            write(TabMot[k]);

        End;
    writeln;
End;{fin de la troisiŠme proc‚dure}

Procedure RechMot(x:String;f:integer);



{ recherche un mot dans la grille caractŠre par caractŠre dans toutes
les directions (8 directions!), Aussit“t le mot est retrouv‚ il change de couleur et la grille est
affich‚e. Cette derniŠre doit s'afficher … chaque fois qu'un mot est trouv‚.}
Begin
    l := length(x); {c'est utilis‚ pour r‚cuperer la longueur du mot }
    trouve := 0;
    TextAttr := $0b;
    write(f,'  ',x);
    {On affiche le mot … chercher en bleu(bleu vert pour etre plus exacte)}
    TextAttr := $0d;
    write('   VOICI LE MOT: ');
    writeln(' ');
    For j:=0 To 14 Do
        Begin
            For i:=0 To 14 Do
                Begin
                    If (grille[j][i]=x[1]) Then
                        { Chercher le premier caractŠre du premier mot }
                     begin {   premiere direction : De gauche … droite }


                            If (trouve=0) Then

                                Begin
                                    ii := i;
                                    jj := j;


{variables qu'on va utiliser pour avancer }
                                    i1 := i;
                                    j1 := j;



{variables pour sauvegarder les coordonn‚es du premier caractŠre pour pouvoir l'afficher par la suite}
                                    v := 1;



  {variable qui r‚cupŠre le nombre de caractŠres test‚s afin de s'arrˆter … la lpngeur du mot}
                                    For w:=2 To l Do
                                        Begin
                                            ii := ii+1;
                                            If (grille[jj][ii]=x[w] )  Then
                                                Begin
                                                    v := v+1;



                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then

                                                Begin
                                                    trouve := 1;
                                                    {ca veut dire que le mot a ete trouv‚}
                                                    j2 := jj;



                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If (R=j1) And ( O<=i2 )And (O>=
                                                                       i1 ) Then
                                                                        Begin
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;



                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then


                                                    {les caracteres trouv‚s sont affich‚s en bleu}
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else

                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;

                              {c'est pour afficher le mot trouv‚ en rouge et passer au mot suivant}

                                                                        End;

                                                                    If (R=j1) And ( O<=i2 )And (O>=
                                                                       i1 ) Then

                                                                        Begin
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                        End;


                                                                End;
                                                            {boucle O}
                                                            writeln(' ');
                                                        End;
                                                    {boucle R}
                                                End;
                                            {v=l}
                                        End;
                                    {boucle w}
                                End;
                            {trouve}
                            ii := i1;



{On remet les variables de direction aux valeurs que la boucle de d‚but d‚t‚rmine pour qu'elles puissent ˆtre incr‚ment‚es}
                            jj := j1;
                            {pour rechercher le premier caractŠre d'un autre mot}







                            {   deuxieme direction : De bas en haut  selon la premiŠre diagonale}
                            If (trouve=0) Then
                                Begin
                                    v := 1;
                                    For w:=2 To l Do
                                        Begin
                                            ii := ii+1;
                                            jj := jj+1;
                                            If (grille[jj][ii]=x[w] )  Then
                                                Begin
                                                    v := v+1;
                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then
                                                Begin
                                                    trouve := 1;
                                                    j2 := jj;
                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If (R>=j1) And (R<=j2) And (O<=
                                                                       i2 )And (O>=i1) And (O=ii+1-l
                                                                       ) And (R=jj+1-l) Then
                                                                        Begin
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;
                                                                            l := l-1;
                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else
                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;

                                                                        End;

                                                                End;

                                                            writeln(' ');
                                                        End;

                                                End;

                                        End;

                                End;

                            ii := i1;
                            jj := j1;







                                                                                                                             {troisieme direction : De haut en bas selon la deuxiŠme diagonale }
                            If (trouve=0) Then
                                Begin
                                    v := 1;
                                    For w:=2 To l Do
                                        Begin
                                            ii := ii+1;
                                            jj := jj-1;
                                            If (grille[jj][ii]=x[w] )  Then
                                                Begin
                                                    v := v+1;
                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then
                                                Begin
                                                    trouve := 1;
                                                    j2 := jj;
                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If (R<=j1 )And( R>=j2) And (O<=
                                                                       i2) And (O>=i1) And( O=ii)
                                                                       And( R=jj ) Then
                                                                        Begin
                                                                            ii := ii-1;
                                                                            jj := jj+1;
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;
                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else
                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;
                                                                         
                                                                        End;
                                                                  
                                                                End;
                                                           
                                                            writeln(' ');
                                                        End;
                                                    
                                                End;
                                       
                                        End;
                                    
                                End;
                         
                            ii := i1;
                            jj := j1;








                                                                                                                  {quatrieme direction   : De haut en bas}
                            If (trouve=0) Then
                                Begin
                                    v := 1;
                                    For w:=2 To l Do
                                        Begin
                                            jj := jj-1;
                                            If (grille[jj][ii]=x[w])  Then
                                                Begin
                                                    v := v+1;
                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then
                                                Begin
                                                    trouve := 1;
                                                    j2 := jj;
                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If (R<=j1) And ( R>=j2 )And (O=
                                                                       i2 ) Then
                                                                        Begin
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;
                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else
                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;
                                                                      
                                                                        End;
                                                             
                                                                    If (R<=j1) And ( R>=j2 )And (O=
                                                                       i2 ) Then
                                                                        Begin
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                        End;
                                                                End;
                                                      
                                                            writeln(' ');
                                                        End;
                                                	
                                                End;
                                     
                                        End;
                             
                                End;
                     
                            ii := i1;
                            jj := j1;



                                                                                                                              {cinquieme direction : De bas en haut}
                            If (trouve=0) Then
                                Begin
                                    v := 1;
                                    For w:=2 To l Do
                                        Begin
                                            jj := jj+1;
                                            If (grille[jj][ii]=x[w] )  Then
                                                Begin
                                                    v := v+1;
                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then
                                                Begin
                                                    trouve := 1;
                                                    j2 := jj;
                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If (R>=j1) And ( R<=j2 )And (O=
                                                                       i2 ) Then
                                                                        Begin
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;
                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else
                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;
                                                                        End;
                                                                    If (R>=j1) And ( R<=j2 )And (O=
                                                                       i2 ) Then
                                                                        Begin
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                        End;
                                                                End;
                                                            writeln(' ');
                                                        End;
                                                End;
                                        End;
                                End;
                            ii := i1;
                            jj := j1;







                                                                                                                              {sixieme direction : De droite … gauche }
                            If (trouve=0) Then
                                Begin
                                    v := 1;
                                    For w:=2 To l Do
                                        Begin
                                            ii := ii-1;
                                            If (grille[jj][ii]=x[w] )  Then
                                                Begin
                                                    v := v+1;
                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then
                                                Begin
                                                    trouve := 1;
                                                    j2 := jj;
                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If (R=j1) And ( O>=i2 )And (O<=
                                                                       i1 ) Then
                                                                        Begin
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;
                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else
                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;
                                                                        End;
                                                                    If (R=j1) And ( O>=i2 )And (O<=
                                                                       i1 ) Then
                                                                        Begin
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                        End;
                                                                End;
                                                            writeln(' ');
                                                        End;
                                                End;
                                        End;
                                End;
                            ii := i1;
                            jj := j1;









                                                                                                                             {septieme direction : De bas en haut selon la premiŠre diagonale }
                            If (trouve=0) Then
                                Begin
                                    v := 1;
                                    For w:=2 To l Do
                                        Begin
                                            ii := ii-1;
                                            jj := jj-1;
                                            If (grille[jj][ii]=x[w] )  Then
                                                Begin
                                                    v := v+1;
                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then
                                                Begin
                                                    trouve := 1;
                                                    j2 := jj;
                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If (R<=j1 )And (R>=j2 )And (O>=
                                                                       i2 )And (O<=i1) And (O=ii )
                                                                       And( R=jj ) Then
                                                                        Begin
                                                                            ii := ii+1;
                                                                            jj := jj+1;
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;
                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else
                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;
                                                                        End;
                                                                End;
                                                            writeln(' ');
                                                        End;
                                                End;
                                        End;
                                End;
                            ii := i1;
                            jj := j1;








                                                                                                                             {huitieme et derniere direction : De bas en haut selon la deuxiŠme diagonale }
                            If (trouve=0) Then
                                Begin
                                    v := 1;
                                    For w:=2 To l Do
                                        Begin
                                            ii := ii-1;
                                            jj := jj+1;
                                            If (grille[jj][ii]=x[w] )  Then
                                                Begin
                                                    v := v+1;
                                                End
                                            Else
                                                Begin
                                                    v := 0;
                                                End;
                                            If (v=l) Then
                                                Begin
                                                    trouve := 1;
                                                    j2 := jj;
                                                    i2 := ii;
                                                    For R:=0 To 14 Do
                                                        Begin
                                                            write (


                                                             '                                     '
                                                            );
                                                            For O:=0 To 14 Do
                                                                Begin
                                                                    If  (R>=j1) And( R<=j2) And( O>=
                                                                       i2 )And (O<=i1 )And (O=ii+l-1
                                                                       ) And( R=jj-l+1 ) Then
                                                                        Begin
                                                                            sara[R][O] := grille[R][
                                                                                          O];
                                                                            TextAttr := $0b;
                                                                            write(grille[R][O],'  ')
                                                                            ;
                                                                            l := l-1;
                                                                        End
                                                                    Else
                                                                        Begin
                                                                            If (sara[R][O]<>grille[R
                                                                               ][O]) Then
                                                                                Begin
                                                                                    TextAttr := $0d;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End
                                                                            Else
                                                                                Begin
                                                                                    TextAttr := $0c;
                                                                                    write(grille[R][
                                                                                          O],'  ');
                                                                                End;
                                                                        
                                                                        End;
                                                                
                                                                End;
                                                       
                                                            writeln(' ');
                                                        End;
                                                                             	
                                                End;
                                           
                                        End;
                                 
                                End;
                                                                                                                                {  Fin des 8 directions }

                        End;
                End;
        End;
End;

Procedure RechCar;



{ recherche les caractŠres restants (non utilis‚s) dans la grille. La
recherche se fera ligne par ligne afin de retrouver le mot, dont la d‚finition est
® Une ville Alg‚rienne ¯, et l'afficher.}
Begin
    TextAttr := $0d;
    writeln(' LES CARACTERES RESTANTS SONT:');
    For j:=0 To 14 Do
        Begin
            write('                                           ');
            For i:=0 To 14 Do
                Begin
                    If (grille[j][i]=sara[j][i]) Then
                        Begin


                            TextAttr := $0d;
                            write(grille[j][i],' ');
                        End
                    Else
                        Begin
                         
                            TextAttr := $09;
                     
                            write(grille[j][i],' ');
                        End;
                End;
            writeln(' ');
        End;
    TextAttr := $0d;
    write('LE NOM DE LA VILLE ALGERIENNE QUI EST LE DERNIER MOT EST  :');
    For j:=0 To 14 Do
        Begin
            For i:=0 To 14 Do
                Begin
                    If (sara[j][i]<>grille[j][i]) Then
                        {Sert … r‚cup‚rer les caractŠres restants qui forment le mot final}
                        Begin
                            TextAttr := $09;
                            write(grille[j][i]);
                        End ;
                End;
        End;
    TextAttr := $0c;
    writeln(' ');
    writeln(' ');
    Write('                                           C''EST FINI BYEEEEEE ');
End ;

//_____________________________________________________________________________________________________________________________________________________________
{commen‡ons le programme principal}
Begin
 {maintenant il est temps de faire appel aux proc‚dures d‚clar‚es en haut}
    RempGr;{remplissage de la grille}

    TextAttr := black shl 4+15;
    ClrScr;
    RempTabMot;
     {remplissage du tableau des mots … rechercher et affichage du tableau par la meme occasion}
    AffichGr;{affichage de la grille }

    writeln('');
    write('_____________________________________________');
    TextAttr := $0d;
    writeln();
    writeln('                       VOUS VOULEZ JOUER ?    TAPEZ ''1 '' POUR COMMENCER');
    Repeat
        Begin
            readln(d);
        End
    Until (d=1);
    For f:=1 To 39 Do
        Begin
            RechMot(TabMot[f],f);
            writeln('  ');
            writeln('   ');
            TextAttr := $0d;
            If (f<39) Then
                Begin
                    writeln(


                         '                                     RETAPEZ ENCORE UNE FOIS ''1'' POUR LE PROCHAIN MOT'
                    );
                    Repeat
                        Begin
                            readln(d);
                        End
                    Until (d=1);
                End
             
            Else
                Begin
                    writeln(


                       '                                         OH ! DEJA 39 MOTS TROUVES ! VOUS VOULEZ LE DERNIER ? ET BAH CLIQUEZ SUR ENTRER ;) '
                    );
                    TextAttr := $0b;
                    clignoter('BRAVOOOOOOOOOOO VOUS AVEZ REUSSI A TOUT RETROUVER !');
                End;
            writeln('  ');
            writeln('   ');
        End;
    RechCar;
    writeln;
    readln;

End.
