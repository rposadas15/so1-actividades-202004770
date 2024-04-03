# Completely Fair Scheduler (CFS) de Linux. 

**Justicia absoluta:** El CFS intenta asignar tiempo de CPU de manera justa entre todos los procesos en ejecución. Cada proceso recibe una "cuota" de tiempo de CPU proporcional a su peso relativo.

**Modelo de tiempo compartido:** El CFS utiliza un modelo de tiempo compartido en el que cada proceso se ejecuta durante una pequeña cantidad de tiempo antes de cambiar a otro proceso. Esto se hace para garantizar que todos los procesos tengan la oportunidad de ejecutarse.

**Algoritmo de balanceo de carga:** El CFS utiliza un algoritmo de balanceo de carga para distribuir los procesos entre las CPU disponibles de manera equitativa. Esto ayuda a maximizar la utilización de la CPU en sistemas multiprocesador.

**Árboles de búsqueda rojo-negro:** El CFS utiliza una estructura de árbol rojo-negro para mantener un seguimiento eficiente de los procesos en ejecución. Esto permite una búsqueda rápida del próximo proceso a ejecutar.

**Prioridades dinámicas:** A diferencia de los planificadores anteriores que utilizaban prioridades estáticas, el CFS ajusta dinámicamente las prioridades de los procesos en función de su comportamiento de ejecución. Esto significa que los procesos que utilizan menos tiempo de CPU obtienen una prioridad más alta, mientras que los procesos que utilizan más tiempo de CPU obtienen una prioridad más baja.

**Tiempo de ejecución virtual (Vruntime):** El CFS utiliza una métrica llamada tiempo de ejecución virtual (Vruntime) para determinar qué proceso se ejecutará a continuación. El proceso con el menor Vruntime es seleccionado para ejecutarse.