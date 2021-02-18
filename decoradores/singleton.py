# Creo mi decorador para poder crear el patron creacional singleton , con el fin de utilizarlo en mi clase conexion

def singleton(cls):
    intancias = dict()

    def wrap(*args, **kwargs):
        if cls is not intancias:
            intancias[cls] = cls(*args, **kwargs)
        return intancias[cls]

    return wrap
