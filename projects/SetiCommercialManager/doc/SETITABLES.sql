TBSETIFORM
ID INT NOT NULL,
FORMNAME VARCHAR(100) NOT NULL,
FORMCAPTION VARCHAR(100) NULL,
FORMTAG INT NULL DEFAULT 0,
STATUS CHAR(1) NULL DEFAULT 'S'

TBSETICOMPONENT
ID INT NOT NULL,
COMPONENTNAME VARCHAR(100) NOT NULL,
COMPONENTCAPTION VARCHAR(100) NULL,
COMPONENTTAG INT NULL DEFAULT 0,
COMPONENTTYPE VARCHAR(30) NULL, /*TEDIT*/
COMPONENTIDFORM INT NULL,

TBSETIFIELDCOMPONENT
ID INT NOT NULL,
FIELDNAME VARCHAR(1000 NULL,
DATAFIELD VARCHAR(100) NULL,
FIELDTABLENAME VARCHAR(100) NULL,
FIELDTYPE VARCHAR(30) NULL,
FIELDSIZE INT NULL,
DISPLAYLABEL VARCHAR(100) NULL,
DISPLAYWIDTH INT NULL,

