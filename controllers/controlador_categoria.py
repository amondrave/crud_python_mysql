from conexion.conexion import Conexion
from models.categoria import Categoria


class ControladorCategoria():

    __conn = Conexion()

    def crear_categoria(self, descripcion):
        sql = "INSERT INTO categoria (descripcion) VALUES('{}')".format(
            descripcion)
        try:
            self.__conn.cursor.execute(sql)
            self.__conn.connection.commit()

        except Exception as e:
            raise "Se ha detectado un problema con la ejecucion de la sentencia"
        finally:
            self.__conn.close
