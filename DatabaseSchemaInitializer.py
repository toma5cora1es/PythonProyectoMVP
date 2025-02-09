import sqlite3

def create_local_db(db_path="db SINERGIA APP.sqlite"):
    """
    Genera la base de datos local y crea tablas de ejemplo.
    Ajusta los campos según tu modelo de datos real.
    """
    print(f"Creando base de datos en {db_path}...")
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Ejemplo: Tabla Clientes
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS Clientes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nombre TEXT NOT NULL,
            direccion TEXT,
            telefono TEXT
        );
    """)

    # Tabla Comprobantes
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS Comprobantes (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            cliente_id INTEGER,
            total REAL,
            fecha TEXT,
            FOREIGN KEY(cliente_id) REFERENCES Clientes(id)
        );
    """)

    # Tabla Financiaciones
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS Financiaciones (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            descripcion TEXT,
            tasa REAL,
            max_cuotas INTEGER
        );
    """)

    # Continúa con otras tablas como "Kits", "Productos", etc.
    # ...
    
    conn.commit()
    conn.close()
    print("Base de datos creada/actualizada correctamente.")

if __name__ == "__main__":
    create_local_db()