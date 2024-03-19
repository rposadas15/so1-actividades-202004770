# Pregunta no. 1
    En un scheduling permisivo, el sistema operativo permite que las interrupciones ocurran en cualquier momento durante la ejecución de una tarea y en un scheduling no permisivo, el sistema operativo no permite que ocurran interrupciones mientras una tarea está en ejecución.

# Pregunta no. 2
    Round robin: ya que es un algoritmo de scheduling en donde cada proceso recibe un pequeño intervalo de tiempo de CPU, cuando el proceso ya ha consumido su cuántum de tiempo, se coloca al final de la cola de procesos listos, y el siguiente proceso en la cola obtiene la CPU.

# Pregunta no. 3
    I/O-Bound: este proceso tiene mas probabilidad de recibir cambios voluntarios, porque sus operaciones son de salida y de entrada del uso del CPU.

    CPU-Bound: este proceso tiene mas probabilidad de recibir cambios no voluntarios, porque realiza más operaciones con el CPU y no solo salida y entrada.

# Pregunta no. 4
    #include <stdio.h>
    #include <stdlib.h>
    #include <unistd.h>
    #include <sys/types.h>
    #include <sys/wait.h>

    int main() {
        pid_t pid = fork();
        if (pid < 0) {
            perror("Error, creacion de hijo");
            exit(EXIT_FAILURE);
        } else if (pid == 0) {
            printf("Hijo creado, PID No: %d\n", getpid());
            exit(EXIT_SUCCESS);
        } else {
            printf("Esperando que el hijo se convierta en un zombie... (Viende de un proceso padre)\n");
            sleep(10);
            printf("Saliendo de Padre\n");
        }
        return 0;
    }
