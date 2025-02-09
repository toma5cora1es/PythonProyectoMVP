/* Theme.qml
   -----------
   Define la paleta de colores, tipografías y otros estilos globales.
*/

pragma Singleton
import QtQuick 2.15

QtObject {
    property color primaryColor: "#3498db"
    property color secondaryColor: "#2ecc71"
    property color accentColor: "#e74c3c"
    property color backgroundColor: "#ecf0f1"
    property string fontFamily: "Arial"
    property int defaultFontSize: 14
    property color textColor: "#2c3e50"
    // Agrega más propiedades según tu diseño.
}

