import cx_Oracle

#Database connection details
username = 'MARCO'
password = 'cmpg311'
dsn = 'localhost:1521/xe'

#Path to query file
filepath = 'CAR_SQL_MARLIE_PART1.sql'

try:
    #Read SQL file
    with open(filepath, 'r') as file:
        sql_statements = file.read()

    #Connect to database
    connection = cx_Oracle.connect(user=username, password=password, dsn=dsn)
    cursor = connection.cursor()

    #Split and execute individual statements
    for statement in sql_statements.strip().split(';'):
        statement = statement.strip()
        if not statement:
            continue

        try:
            cursor.execute(statement)

            #Check for SELECT statement
            if statement.lower().startswith('select'):
                # Get column names
                columns = [col[0] for col in cursor.description]
                print("\n" + "-" * 50 + "NEXT QUERY" + "-" * 50 + "\n" + "Query:\n" + statement + "\n")
                print(" | ".join(columns))  #Print headers
                print("-" * 40)

                #Print row data
                for row in cursor.fetchall():
                    print(" | ".join(str(cell) for cell in row))
            else:
                continue

        except cx_Oracle.DatabaseError as e:
            print(f"\nError executing statement:\n{statement}")
            print(e)

#Catch exceptions
except cx_Oracle.DatabaseError as e:
    print("Error: " + e)
    
#Close connections
finally:
    if cursor:
        cursor.close()
    if connection:
        connection.close()