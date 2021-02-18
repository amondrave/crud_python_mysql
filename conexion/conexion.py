import pymysql

from decoradores.singleton import singleton


@singleton
class Conexion:

    def __init__(self):
        self.connection = pymysql.connect(
            host='localhost',
            user='root',
            password='',
            db='financiera',
            port=3380
        )
        self.__cursor = self.connection.cursor()

    @property
    def cursor(self):
        return self.__cursor

    def close(self):
        self.connection.close()
