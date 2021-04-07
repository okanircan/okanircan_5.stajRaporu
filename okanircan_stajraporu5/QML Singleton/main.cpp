#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterSingletonType(QUrl("qrc:/Turkish.qml"), "Turkish", 1, 0, "Turkish");
    qmlRegisterSingletonType(QUrl("qrc:/English.qml"), "English", 1, 0, "English");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
