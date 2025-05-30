#include <flutter/flutter_aurora.h>
#include <flutter/flutter_compatibility_qt.h> // <- Add for Qt
#include "generated_plugin_registrant.h"

int main(int argc, char *argv[]) {
    
    setenv("PULSE_PROP_media.role", "x-maemo", 1);

    aurora::Initialize(argc, argv);

    aurora::EnableQtCompatibility(); // <- Enable Qt

    setlocale(LC_NUMERIC, "C");
    
    aurora::RegisterPlugins();
    aurora::Launch();
    return 0;
}
