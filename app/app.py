import cx_Oracle

dsn_tns = cx_Oracle.makedsn('192.168.10.50', '1521', service_name='free')
conn = cx_Oracle.connect(user='system', password='oracle', dsn=dsn_tns)

print("Connected to Oracle Database")
