import sqlite3
import csv

connector = sqlite3.connect('zmones2.db')
cursor = connector.cursor()

def create_table_kaimynai(connector: sqlite3.Connection, cursor: sqlite3.Cursor):
    query = '''
    CREATE TABLE IF NOT EXISTS kaimynai (
        first_name TEXT,
        last_name TEXT,
        email TEXT
    );
    '''
    cursor.execute(query)
    connector.commit()

def create_table_bendradarbiai(connector: sqlite3.Connection, cursor: sqlite3.Cursor):
    query = '''
    CREATE TABLE IF NOT EXISTS bendradarbiai (
        first_name TEXT,
        last_name TEXT,
        email TEXT,
        telefonai TEXT,
        orderiai TEXT
    );
    '''
    cursor.execute(query)
    connector.commit()

def insert_data_into_kaimynai(connector: sqlite3.Connection, cursor: sqlite3.Cursor):
    with open('people_data.csv', 'r') as file:
        reader = csv.reader(file)
        next(reader)  # Skip header
        data = [(row[0], row[1], row[2]) for row in reader]

    query = 'INSERT INTO kaimynai (first_name, last_name, email) VALUES (?, ?, ?);'
    cursor.executemany(query, data)
    connector.commit()

def insert_data_into_bendradarbiai(connector: sqlite3.Connection, cursor: sqlite3.Cursor):
    with open('people_data.csv', 'r') as file:
        reader = csv.reader(file)
        next(reader)  # Skip header
        data = [(row[0], row[1], row[2], '555-123-4567', 'Order1') for row in reader]

    query = 'INSERT INTO bendradarbiai (first_name, last_name, email, telefonai, orderiai) VALUES (?, ?, ?, ?, ?);'
    cursor.executemany(query, data)
    connector.commit()

# Example usage
create_table_kaimynai(connector, cursor)
create_table_bendradarbiai(connector, cursor)
insert_data_into_kaimynai(connector, cursor)
insert_data_into_bendradarbiai(connector, cursor)

# Close the connection
connector.close()