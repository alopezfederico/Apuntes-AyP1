program usandoWhile;

{
    El WHILE casi tambien como el Repeat-Until que voy a explicar mas adelante, funcionan
    para repetir una o mas instrucciones una cantidad indefinida de veces hasta que la condicion 
    sea falsa

}

var 
    num:integer;
begin

    write('Ingrese numero correcto para cortar el programa: '); readln(num);
    while (num <> 10) do begin
        write('Ingrese numero correcto para cortar el programa: '); readln(num);
    end;
  
  { Esa estructura se va a ejecutar hasta que el usuario ingrese el numero 10, de no ingresarlo
  se ejecutará ese bloque de codigo una y otra vez
    
    Hay que tener presente que antes de entrar al WHILE, se le tuvo que asignar un valor a num
    para poder hacer la comparacion en la condicion.

    Mientras esa condicion sea verdadera, el bloque se ejecuta, en el momento que la condicion
    sea falsa, se salta el bloque de instrucciones del While y avanza en el programa 
  }

    while (num<>0) do begin
        num:= random(10);
        writeln('Numero: ',num);
    end;
end.