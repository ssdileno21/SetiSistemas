SET TERM ^ ;

CREATE OR ALTER PROCEDURE ACCESS_STRIP (
     DATA varchar(512) = '')
returns (
     return_ varchar(512))
as
declare variable with_accent varchar(40) = '������������������������������';
declare variable without_accent varchar(40) = 'aaeouaoaeioucuAAEOUAOAEIOUCUNn';
declare variable letter varchar(1) = '';
begin
   return_ = '';
   While (DATA<>'') do
   begin
      Select case substring(:DATA from 1 for 1)
            when '�' then
                 'a'
            when '�' then
                 'a'
            when '�' then
                 'a'
            when '�' then
                 'a'
            when '�' then
                 'A'
            when '�' then
                 'A'
            when '�' then
                 'A'
            when '�' then
                 'e'
            when '�' then
                 'e'
            when '�' then
                 'e'
            when '�' then
                 'E'
            when '�' then
                 'o'
            when '�' then
                 'o'
            when '�' then
                 'o'
            when '�' then
                 'O'
            when '�' then
                 'O'
            when '�' then
                 'O'
            when '�' then
                 'u'
            when '�' then
                 'u'
            when '�' then
                 'u'
            when '�' then
                 'U'
            when '�' then
                 'U'
            when '�' then
                 'U'
            when '�' then
                 'i'
            when '�' then
                 'I'
            when '�' then
                 'c'
            when '�' then
                 'C'
            when '�' then
                 'n'
            when '�' then
                 'N'
            else
               substring(:DATA from 1 for 1)
            end
      from rdb$database into :letter;

      return_ = return_ || letter;

      DATA  = substring(DATA from 2 for 512);

   end

   suspend;
end^

SET TERM ; ^

