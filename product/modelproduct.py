from django.db import connection

class Menu:
    def all(self):
        with connection.cursor() as cursor:
            cursor.execute("select * from menu")
            datas = cursor.fetchall()
            # print(datas)
        return datas

    def single(self,id):
        with connection.cursor() as cursor:
            cursor.execute("select * from menu where menu_id=%s",(id,))
            data = cursor.fetchone()
            # print(datas)
        return data

    def create(self,menu):
        with connection.cursor() as cursor:
            sql = """INSERT INTO menu(kind,name,unitprice,manufacturer)
                     VALUES(%s,%s,%s,%s)"""
            cursor.execute(sql,menu)
    
    def update(self,menu):
        with connection.cursor() as cursor:
            sql = """UPDATE menu set kind=%s,name=%s,unitprice=%s,manufacturer=%s where menu_id=%s"""
            cursor.execute(sql,menu)
    
    def delete(self,id):
        with connection.cursor() as cursor:
            sql = "delete from menu where menu_id=%s"
            cursor.execute(sql,(id,))