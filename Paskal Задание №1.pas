Program DKR_1;

const
  Sz = 5;

Var
  a: array[1..Sz] of Integer;
  i, max, min: integer;

begin
  writeln('Введите данные массива: ');

  for i := 1 to Sz do
    readln(a[i]);

  max := a[1];
  min := a[1];

  for i := 2 to Sz do
  begin
    if a[i] > max then
      max := a[i];

    if a[i] < min then
      min := a[i];
  end;

  writeln('Максимальное число: ', max);
  writeln('Минимальное число: ', min);
end.