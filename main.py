# Archivo principal de arranque python
from controllers.controlador_categoria import ControladorCategoria

if __name__ == '__main__':
    categoria = ControladorCategoria()
    categoria.crear_categoria('limpieza')
