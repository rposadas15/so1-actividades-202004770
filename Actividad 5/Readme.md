# ¿Cuántos procesos únicos son creados?
Cada vez que se llama a la funcion de fork(), este duplica el proceso actual, por lo que crean procesos de 2 a la n estancias. 
n = numero de llamdas de la funcion.

# ¿Cuántos hilos únicos son creados?
Estos dependeran del numero de veces que se ejecute la funcion, hasta que el pid llegue a 0. Esto dependera de la cantidad de recursividad que se ejecute. 
