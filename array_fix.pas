program array_fix;
var
    aFix : array[0..100] of integer; (*set lại type nếu cần*)
    aFixM : integer;
    aResult : array[0..100] of integer; (*set lại type nếu cần*)
    OldLength : integer;
    x : integer;
procedure arrayFix();
begin
    aFixM := -1;
    for x:=0 to OldLength do begin
        if aFix[x] > 0 then begin
            aFixM := aFixM + 1;
            aResult[aFixM] := aFix[x];
        end;
    end;
end;

begin
    aFix[0] := 100;
    aFix[1] := 0;
    aFix[2] := 200;
    OldLength := 2;
    arrayFix();
    for x:=0 to aFixM do begin
        writeln(aResult[x]);
    end;
end.
