

class Categoria(object):

    def __init__(self, id_categoria, descripcion):
        self.__id_categoria = id_categoria
        self.__descripcion = descripcion

    @property
    def id_categoria(self):
        return self.__id_categoria

    @id_categoria.setter
    def id_categoria(self, id_categoria):
        self.__id_categoria = id_categoria

    @property
    def descripcion(self):
        return self.__descripcion

    @descripcion.setter
    def descripcion(self, descripcion):
        self.__descripcion = descripcion
