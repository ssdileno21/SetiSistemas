unit uHelp;

interface

{
************************* FORMUL�RIOS - COMPONENTES ****************************

1: NOMECLATURA DOS COMPONENTES - PARA O COMPONENTE DO FORMUL�RIO SER
IDENTIFICADO PELO CAMPO NO BANCO DE DADOS, DEVER� SER NOMEADO DA SEGUINTE FORMA:

TIPO        | 1�   | 2�  | 3� IDENTIFICADOR DO CAMPO | EXEMPLO
--------------------------------------------------------------------------------
TEDIT       | EDT  | _   | CODIGO                    | EDT_CODIGO
TCHECKBOX   | CBX  | _   | ATIVO                     | CBX_ATIVO
TMEMO       | MEM  | _   | OBS                       | MEM_OBS
TRADIOGROUP | RGR  | _   | SEXO                      | RGR_SEXO
TCOMBOBOX   | CBO  | _   | CIDADE                    | CBO_CIDADE

************************** BANCO DE DADOS - CAMPOS *****************************

1: CAMPO QUE SER� UTILIZADO EM UM CHECKBOX NO FORMUL�RIO:

AP�S O PIPE '|' PARA VERIFICA��O DOS VALORES FIXOS, O PRIMEIRO VALOR ANTES DO
PONTO E VIRFULA ';' SER� O VALOR CHECADO, EX:
> NOME DO CAMPO: STATUS;
> CAMPO NO FORMULARIO: [X] STATUS
> NOME DA TABELA: TBUSUARIO
> VALUES: 'S' OU 'N'
> DESCRI��O DO CAMPO NO BANCO DE DADOS: Ativo |S;N
> O VALOR CHECADO � 'S'
--------------------------------------------------------------------------------
2: INFORMA��O DE CAMPO, CUJO O PREENCHIMENTO � OBRIGAT�RIO NO FORMUL�RIO:

O PRIMEIRO CARACTER NA DESCRI��O DO CAMPO NO BANCO DE DADOS, DEVER� SER
ASTERISCOS '*', SENDO ASSIM, A INFORMA��O DESTE CAMPO NO FORMUL�RIO SER�
OBRIGAT�RIA, EM CASOS DE INSERT E UPDATE.
--------------------------------------------------------------------------------

********** FORMUL�RIOS - NOMECLATURA DE METODOS E VARI�VEIS PUBLICAS ***********

PASTA |ID |NOME FORM          |TIPO            |INICIAIS
--------------------------------------------------------------------------------
VIEWS |1    |UFRMSTANDARREG     |FORM            |
VIEWS |1    |UFRMSTANDARREG     |FUNCTIONS       |SR1fn
VIEWS |1    |UFRMSTANDARREG     |PROCEDURES      |SR1pr
VIEWS |1    |UFRMSTANDARREG     |PROPERTY        |SR1q
VIEWS |1    |UFRMSTANDARREG     |PROPERTY CLASS  |SR1c

********** DATAMODULOS - NOMECLATURA DE METODOS E VARI�VEIS PUBLICAS ***********

PASTA |ID |NOME FORM          |TIPO            |INICIAIS
--------------------------------------------------------------------------------
DM    |1    |UFRMSTANDARREG     |FORM            |
DM    |1    |UFRMSTANDARREG     |FUNCTIONS       |SR1fn
DM    |1    |UFRMSTANDARREG     |PROCEDURES      |SR1pr
DM    |1    |UFRMSTANDARREG     |PROPERTY        |SR1q
DM    |1    |UFRMSTANDARREG     |PROPERTY CLASS  |SR1c


************ CLASSES - NOMECLATURA DE METODOS E VARI�VEIS PUBLICAS *************

PASTA       |ID |NOME UNIT      |NOME CLASSE    |TIPO            |INICIAIS
--------------------------------------------------------------------------------
CONTROLLER  |1  |UMASTERCONTROL |TMASTERCONTROL |CLASS           |
CONTROLLER  |1  |UMASTERCONTROL |TMASTERCONTROL |PROPERTY        |SFC1q
CONTROLLER  |1  |UMASTERCONTROL |TMASTERCONTROL |PROPERTY CLASS  |SFC1c
CONTROLLER  |1  |UMASTERCONTROL |TMASTERCONTROL |FUNCTIONS       |SFC1fn
CONTROLLER  |1  |UMASTERCONTROL |TMASTERCONTROL |PROCEDURES      |SFC1pr
DAO         |1  |UMASTERDAO     |TMASTERDAO     |CLASS           |
DAO         |1  |UMASTERDAO     |TMASTERDAO     |PROPERTY        |SFD1q
DAO         |1  |UMASTERDAO     |TMASTERDAO     |PROPERTY CLASS  |SFD1c
DAO         |1  |UMASTERDAO     |TMASTERDAO     |FUNCTIONS       |SFD1fn
DAO         |1  |UMASTERDAO     |TMASTERDAO     |PROCEDURES      |SFD1pr
}


{*******************************************************************************
******************************* ERROR ID - FRAMEWORK ***************************
********************************************************************************
>> FOLDER STRUCTURES
ID |NOME PASTA    |CAMINHO            |ATIVO
--------------------------------------------------------------------------------
FS1  |CLASS         |...\frameworkFiles |S
FS2  |COMPONENENTS  |...\frameworkFiles |S
FS3  |CONTROLLER    |...\frameworkFiles |S
FS4  |DAO           |...\frameworkFiles |S
FS5  |DM            |...\frameworkFiles |S
FS6  |DRAFT         |...\frameworkFiles |N
FS7  |MODEL         |...\frameworkFiles |N
FS8  |VIEWS         |...\frameworkFiles |S

>> FILES - FS1 - CLASS
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------
F1          |USETICONFIG            |S      |FS1-F1
F2          |USETICONNECTS          |S      |FS1-F2
F3          |USETICONSTANTESDB      |N      |FS1-F3
F4          |USETIFRAMEWORKHELP     |N      |FS1-F4
F5          |USETIFRAMEWORK         |S      |FS1-F5
F6          |USETIMASTERCLASS       |S      |FS1-F6
F7          |USETISEARCHTYPE        |N      |FS1-F7
F8          |USETIUSEFUL            |S      |FS1-F8
F9          |UCONSTANT              |S      |FS1-F9
F10         |UHELP                  |S      |FS1-F10
F11         |ULOCATE                |S      |FS1-F11
F12         |UMASTERSEARCHSCREEN    |S      |FS1-F12
F13         |UMESS                  |S      |FS1-F13

>> FILES - FS2 - COMPONENENTS
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - FS3 -  CONTROLLER
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------
F1          |UMASTERCONTROL         |S      |FS3-F1
F2          |USETIFORMCONTROL       |N      |FS3-F2

>> FILES - FS4 - DAO
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------
F1          |UMASTERDAO             |S      |FS4-F1
F2          |USETIFORMDAO           |N      |FS4-F2

>> FILES - FS5 - DM
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------
F1          |UDMMASTERDATAMODULE    |S      |FS5-F1

>> FILES - FS6 - DRAFT
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------
F1          |UDRAFTCONTROL          |N      |FS6-F1
F2          |UDRAFTDAO              |N      |FS6-F2
F3          |UDRAFTMODEL            |N      |FS6-F3

>> FILES - FS7 - MODEL
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------
F1          |UFORMCONTROLMODEL      |N      |FS7-F1
F2          |USETIFORMMODEL         |N      |FS7-F2

>> FILES - FS8 - VIEWS
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------
F1          |UFRMSTANDARDREG        |S      |FS8-F1
F2          |UFRMSTANDARDITEMREG    |S      |FS8-F2
F3          |UFRMMASTERSEARCHSCREEN |S      |FS8-F3
F4          |UFRMSPLASH             |S      |FS8-F4
F5          |UFRMMAIN               |S      |FS8-F5
F6          |UFRMLOGIN              |S      |FS8-F6
F7          |UFRMFORMS              |S      |FS8-F7
F8          |UFRMTOLOCATE           |S      |FS8-F8




******************************* ERROR ID - PROJECT   ***************************
>> FOLDER STRUCTURES
ID    |NOME PASTA     |CAMINHO                  |ATIVO
--------------------------------------------------------------------------------
SCM1  |BIN            |...\SetiCommercialManager|S
SCM2  |CLASS          |...\SetiCommercialManager|S
SCM3  |CONTROLLER     |...\SetiCommercialManager|S
SCM4  |DAO            |...\SetiCommercialManager|S
SCM5  |DCU            |...\SetiCommercialManager|S
SCM6  |DM             |...\SetiCommercialManager|S
SCM7  |DOC            |...\SetiCommercialManager|S
SCM8  |MODEL          |...\SetiCommercialManager|S
SCM9  |SVN            |...\SetiCommercialManager|S
SCM10 |TRASH          |...\SetiCommercialManager|S
SCM11 |VIEWS          |...\SetiCommercialManager|S
SCM12 |WIN32          |...\SetiCommercialManager|S

>> FILES - SCM1 - BIN
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM2 - CLASS
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM3 - CONTROLLER
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM4 - DAO
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM5 - DCU
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM6 - DM
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM7 - DOC
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM8 - MODEL
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM10 - SVN
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM11 - TRASH
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM12 - VIEWS
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------

>> FILES - SCM12 - CLASS
ID ARQUIVO |NOME ARQUIVO            |ATIVO  |C�DIGO
--------------------------------------------------------------------------------




}

implementation

end.
