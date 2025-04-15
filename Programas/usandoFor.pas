program usandoFor;

{
    La estructura de control FOR se utiliza para repetir una o mas instrucciones N cantidad de veces

    El valor de N debe ser previamente conocido para poder realizar las repeticiones la cantidad de veces
    necesarias.

    La estructura utiliza un indice el cual no puede ser modificado durante la ejecucion de ésta ya
    que estará destinado exclusivamente para la estructura.
}


var
    N:integer; // Cantidad de veces a repetir una o mas instrucciones
    x:integer;  // Indice para utilizar en la estructura

    p: char; // Indice de tipo char
begin
    
    N := 5;

    for x:= 1 to N do
        writeln('Hola');
    
    for x:= 20 downto N do begin
        write('Hola');
        writeln('. Como estas?');
    end;

    //Tambien se puede hacer de esta forma

    for p:= 'a' to 'z' do 
      writeln(':D');
end.