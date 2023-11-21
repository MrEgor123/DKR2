Program DKR_2;
var
  str, ministr, newStr: string;
  i, j, k, y: integer;

begin
  writeln('Введите строку: ');
  readln(str);
  writeln('Введите подстроку для инверсии: ');
  readln(ministr);

  i := 1;
  while i <= length(str) do
  begin
    j := 1;
    k := i;
    while (j <= length(ministr)) and (k <= length(str)) and (str[k] = ministr[j]) do
    begin
      j := j + 1;
      k := k + 1;
    end;

    if j > length(ministr) then
    begin
      for y := length(ministr) downto 1 do
      begin
        newStr := newStr + ministr[y];
      end;
      i := i + length(ministr);
    end
    else
    begin
      newStr := newStr + str[i];
      i := i + 1;
    end;
  end;

  writeln(newStr);
end.
