unit uSetiFrameworHelp;

interface

{
    Using try except in SetiFramework:

    try
      //
    except on e : exception do
        SetiMens(0,e.Message,'Error');
    end;
}

implementation

end.
