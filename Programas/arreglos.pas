program arreglos;
{
Los vectores constan de su dimension FISICA la cual no se va a modificar a lo largo del programa por lo que se 
declaran en la seccion de CONST
}
const
    Dim_F_vector1 = 10;
    Dim_F_vector2 = 40;
type

{
    Dentro de la seccion del type es donde se declara la estructura de tipo arreglo

Se declara de la forma

    Nombre_de_estructura = Array[rango] of tipo_de_dato

El vector puede ser de cualquier tipo de dato que nosotros le asignemos.

Puede almacenar desde un dato simple hasta un tipo de dato como ejemplo un registro
    
}

    registro = record
        dato1: integer;
        dato2: real;
        dato3: boolean;
        end;
    
    rango1 = 1..Dim_F_vector1;

    Vector_1 = Array[rango1] of registro;

    rango2 = 1..Dim_F_vector2;

    Vector_2 = Array[rango2] of integer;

// Y tambien se pueden declarar sin generar variables con los rangos

    Vector_3 = Array[1..40] of Vector_2;  //Matriz
    //No es recomendable no utilizar una dim_Fisica delcarada
    //Es preferible asignar una nueva Dim_F_Vector3 = 40 y utilizar [1..Dim_F_Vector3]


procedure CargarVector1(var V:Vector_1);
    var 
        x:integer; //INDICE QUE VA A USAR EL VECTOR PARA INGRESAR A SUS CAMPOS
    begin
        for x:= 1 to Dim_F_vector1 do begin
            write('Ingrese numero entero: '); readln(V[x].dato1);
            write('Ingrese numero real: '); readln(V[x].dato2);
            v[x].dato3:= v[x].dato1 > v[x].dato2; 
            //En dato3 se almancena V si dato1 es mayor al dato2 y F en casos contrarios
        end;
    end;

procedure CargarVector2(var V:Vector_2);
    var
        x:integer;
    begin
        for x:= 1 to Dim_F_vector2 do
            V[x]:=x;
    end;

procedure CargarVector3(var V:Vector_3);
    var 
        x,y:integer;
    begin
        for x:= 1 to 40 do
            for y:= 1 to Dim_F_vector2 do
                V[x][y]:= x+y;
    end;

procedure Ordenar_Vector_SELECCION(var V:Vector_2; dim_L:Integer);
    var 
        pos,i,j:integer;
        item: integer;
    begin
        for i:= 1 to dim_L -1 do
            begin
                pos := i;
                for j:= i+1 to dim_L do
                    if (V[j] < v[pos]) then // Comparacion a partir del criterio de ordenacion 
                        pos:=j;
            item:= v[pos];
            v[pos]:= V[i];
            v[i]:= item;          
            end;
    end;

procedure Ordenar_Vector_INSERCION(var V:Vector_2; dim_L:Integer);
    var 
        i,j:integer;
        item:integer;
    begin
        for i:= 2 to dim_L do begin
            item:= V[i];
            j:= i-1;
            while (j>0) and (j>V[i]) do begin // Comparacion a partir del criterio de ordenacion 
                v[j+1]:= v[j];
                j:=j-1;
                end;
            v[j+1]:= item
        end;      
    end;

var
    
    { IDENTIFICADOR = Vector1  }
    V1 : Vector_1;
    V2 : Vector_2;
    V3 : Vector_3;

    V_incompleto : Vector_2;
    x,dim_L_vi:integer;
begin
    {
        Para hacer uso de estos vectores hay que recordar que se manejan con un INDICE
    }
    CargarVector1(V1);
    CargarVector2(V2);
    CargarVector3(V3);

    {
        Es fundamental entender que asi como cada vector que estamos usando tiene su dimension FISICA... tambien tiene
        su dimension LOGICA :)

        Recordemos que la dimension LOGICA es "hasta que vagón del tren se cargó con mercadería". Mientras
        que la dimension FISICA es la cantidad total de vagones. 

Vector: [1][4][5][7][7][8][3][/][/][/]
   Pos:  1  2  3  4  5  6  7  8  9  10 
                           ^        ^
                           '        '   
                           '        DimF = 10
                           '
                           DimL = 7
    }

    {
        En estos vectores que utilicé, hice uso total de los espacios de los vectores, por lo que en ningun vector queda
        algun lugar vacío para ingresar elementos... De esta forma la dimension LOGICA termina siendo igual a la dimension FISICA.

        <<< Nunca puede pasar que dim Logica sea MAYOR a Dim Fisica >>>

        Para ordenar el vector de enteros, como argumento voy a mandar la Dimension Fisica ya que desde el comienzo hice el programa para llenar todo el vector
        y dentro del proceso va a recibir el parametro con el nombre de Dim_L, está programado de esta manera para que en caso de tener un vector
        a medio cargar, si le mandas como argumento su respectivo DimL del vector al momento de invocar el proceso, utiliza este numero para no
        pasarme de largo del ultimo espacio cargado
    }
        Ordenar_Vector_SELECCION(V2,Dim_F_vector2);

        Ordenar_Vector_INSERCION(V2,Dim_F_vector2);

    { 
        Si por ejemplo hago un vector que no esté completamente lleno, tengo que tener almacenada la dimension Logica de ese vector:
    }
    For x:= 1 to Dim_F_vector2 - 10 do begin
        V_incompleto[x]:= x*2;
        dim_L_vi:= x  
        end;

    {En   dim_L_vi ("Dimension Logica del Vector incompleto") quedó almacenado el ultimo indice al que ingresó el vector, siendo este el ultimo  lugar donde se almacenó algun numero
     De esta forma ahora teniendo almaceada la Dimension Logica, al querer ordenar el vector con el modulo "Ordenar_vector...." le mando el vector y ésta
     dimension Logica
        }

    Ordenar_Vector_SELECCION(V_incompleto,dim_L_vi);
end.