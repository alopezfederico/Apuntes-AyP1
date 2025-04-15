program arreglos;
{
Los vectores constan de su dimension FISICA la cual no se va a modificar a lo largo del programa por lo que se 
declaran en la seccion de CONST
}
const
    Dim_F_vector1 = 20;
    Dim_F_vector2 = 400;
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

    Vector_3 = Array[1..40] of Vector_1;  //Matriz
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

    end;

procedure CargarVector3(var V:Vector_3);
    var 
        x,y:integer;
    begin

    end;

procedure Ordenar_Vector_SELECCION();
    begin
      
    end;

procedure Ordenar_Vector_INSERCION();
    begin
      
    end;

var
    
    { IDENTIFICADOR = Vector1  }
    V1 = Vector_1;
    V2 = Vector_2;
    V3 = Vector_3;
begin
    {
        Para hacer uso de estos vectores hay que recordar que se manejan con un INDICE
    }
    CargarVector1(V1);
    CargarVector2(V2);
    CargarVector3(V3);
end.