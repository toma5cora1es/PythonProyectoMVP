#!/usr/bin/env python
"""
main.py
--------
Punto de entrada de la aplicación.
Utiliza PySide6 para cargar la interfaz QML.
Los comentarios guían al AI assistant para completar funcionalidades adicionales.
"""

import sys
from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from database import database_manager  # Importa el módulo
from config import DATABASE_CONFIG
from PySide6.QtCore import QUrl



def main():
    # Crear la aplicación Qt
    app = QGuiApplication(sys.argv)
    db_manager = database_manager.DatabaseManager(DATABASE_CONFIG)  # Usa la clase dentro del módulo

    # Inicializar el motor QML y cargar el archivo principal de la UI
    engine = QQmlApplicationEngine()
    engine.rootContext().setContextProperty("databaseManager", db_manager)
    engine.load(QUrl("qml/views/MainView.qml"))  # ¡Añade QUrl!

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())

if __name__ == "__main__":
    main()
