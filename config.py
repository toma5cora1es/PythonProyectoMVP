"""
config.py
---------
Archivo de configuración global para el proyecto.
Define parámetros como la configuración de la base de datos.
"""

DATABASE_CONFIG = {
    "Clientes": {
        "source": "db SINERGIA APP",
        "qualifier": "ClientesDataSource",
        "storage": "local"  # Suponiendo que ahora estará en local
    },
    "Comprobantes": {
        "source": "db SINERGIA APP",
        "qualifier": "ComprobantesDataSource",
        "storage": "local"
    },
    "Financiaciones": {
        "source": "db FINANCIACION",
        "qualifier": "FinanciacionData",
        "storage": "local"
    },
    "Kits": {
        "source": "db KITS",
        "qualifier": "KitsData",
        "storage": "local"
    },
    "Productos": {
        "source": "db PRODUCTOS",
        "qualifier": "ProductosData",
        "storage": "local"
    },
    "Promociones": {
        "source": "db PROMOCIONES",
        "qualifier": "PromocionesData",
        "storage": "local"
    },
    "VARIABLES": {
        "source": "db CONFIG",
        "qualifier": "VariablesConfig",
        "storage": "local"
    }
}
