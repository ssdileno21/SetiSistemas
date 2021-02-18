       select
         cast('04.12.2014' as date) as d1, -- DD.MM.YYYY
         cast('04 12 2014' as date) as d2, -- MM DD YYYY
         cast('4-12-2014' as date) as d3,  -- MM-DD-YYYY
         cast('04/12/2014' as date) as d4, -- MM/DD/YYYY
         cast('04,12,2014' as date) as d5, -- MM,DD,YYYY
         cast('04.12.14' as date) as d6,   -- DD.MM.YY
         -- DD.MM with current year
         cast('04.12' as date) as d7,
         -- MM/DD with current year
         cast('04/12' as date) as d8,
         cast('2014/12/04' as date) as d9, -- YYYY/MM/DD
         cast('2014 12 04' as date) as d10, -- YYYY MM DD
         cast('2014.12.04' as date) as d11, -- YYYY.MM.DD
         cast('2014-12-04' as date) as d12, -- YYYY-MM-DD
         cast('4 Jan 2014' as date) as d13, -- DD MM YYYY
         cast('2014 Jan 4' as date) as dt14, -- YYYY MM DD
         cast('Jan 4, 2014' as date) as dt15, -- MM DD, YYYY
         cast('11:37' as time) as t1, -- HH:mm
         cast('11:37:12' as time) as t2, -- HH:mm:ss
         cast('11:31:12.1234' as time) as t3, -- HH:mm:ss.nnnn
         cast('11.37.12' as time) as t4, -- HH.mm.ss
         -- DD.MM.YYYY HH:mm
         cast('04.12.2014 11:37' as timestamp) as dt1,
         -- MM/DD/YYYY HH:mm:ss
         cast('04/12/2014 11:37:12' as timestamp) as dt2,
         -- DD.MM.YYYY HH:mm:ss.nnnn
         cast('04.12.2014 11:31:12.1234' as timestamp) as dt3,
         -- MM/DD/YYYY HH.mm.ss
         cast('04/12/2014 11.37.12' as timestamp) as dt4
       from rdb$database
