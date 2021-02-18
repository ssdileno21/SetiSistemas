create or alter procedure SP_GETDATEFORMAT (
    "DATE" timestamp)
returns (
    RESULT varchar(10))
as
begin
    result = (  lpad(extract(day FROM date),2,'0') || '/' ||
                lpad(extract(month FROM date),2,'0') || '/' ||
                lpad(extract(year FROM date),4,'0'));
end
