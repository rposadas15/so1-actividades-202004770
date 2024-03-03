# 1. Copiar los archivos .sh y .service en una ruta de la computadora.

# 2. Habilitar e iniciar el servicio.
    sudo systemctl daemon-reload
    sudo systemctl enable saludo.service
    sudo systemctl start saludo.service

## Comando para verificar el estado del servicio
    sudo systemctl status saludo.service

## Comando para ver los logs del servicio
    journalctl -u saludo.service