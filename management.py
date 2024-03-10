import psycopg2

conn_string = "dbname='electronics_shop' user='kp766' host='localhost' password='Krishna@24'"
conn = psycopg2.connect(conn_string)
cur = conn.cursor()

def view_stock(cur):
    cur.execute("SELECT * FROM stock")
    inventory = cur.fetchall()
    for item in inventory:
        print(item)

def add_stock(cur, name, description, price, quantity):
    cur.execute("INSERT INTO stock (name, description, price, quantity_of_stock) VALUES (%s, %s, %s, %s)",
                (name, description, price, quantity))
    conn.commit()
    print("Stock has been added successfully!!.")

def place_order(cur, stock_id, provider_id, quantity_ordered, order_date):
    cur.execute("""
        INSERT INTO orders (stock_id, provider_id, quantity_ordered, order_date)
        VALUES (%s, %s, %s, %s)
        RETURNING order_id;
    """, (stock_id, provider_id, quantity_ordered, order_date))
    order_id = cur.fetchone()[0]
    print(f"Order has been placed successfully: ID {order_id}")
    conn.commit()

if __name__ == "__main__":
    conn = psycopg2.connect(conn_string)
    cur = conn.cursor()

    view_stock(cur)
    add_stock(cur, "smartphone", "Samsung galaxy S9, Color: Blue", 550.00, 10)
    place_order(cur, 1, 1, 5, '2024-03-01')
    view_stock(cur)


    cur.close()
    conn.close()

