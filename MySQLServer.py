import mysql.connector
from mysql.connector import Error

# Function to create a database
def create_database():
    try:
        # Connect to the MySQL server
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='sqlpass'
            )
        
        # If the connection is successful
        if connection.is_connected():
            cursor = connection.cursor()
            
            # SQL query to create a new database if it doesn't exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            # Commit the changes
            connection.commit()
            
            print("Database 'alx_book_store' created successfully!")
    
    except mysql.connector.Error as err:
        print(f"Error: {err}")
    
    finally:
        # Closing the cursor and connection
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

# Main function to run the script
if __name__ == "__main__":
    create_database()
