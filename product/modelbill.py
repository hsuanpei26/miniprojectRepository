from django.db import connection

class Bill:
    def all(self):
        with connection.cursor() as cursor:
            cursor.execute("select * from bill")
            datas = cursor.fetchall()
            # print(datas)
        return datas

    def create(self,bill):
        with connection.cursor() as cursor:
            sql = """INSERT INTO bill(time,menuname,totalprice,mname)
                     VALUES(%s,%s,%s,%s)"""
            cursor.execute(sql,bill)         
