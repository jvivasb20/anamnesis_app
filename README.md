Aquí tienes el archivo `README.md` ajustado con la estructura de tu carpeta:

---

# Anamnesis App

Aplicación desarrollada en Flutter para implementar pantallas de anamnesis (recolección de datos médicos). El diseño, colores y campos siguen el prototipo proporcionado.

## 🎥 Funcionamiento

En el siguiente enlace se encuentra un video del funcionamiento de la aplicación:
https://www.loom.com/share/0e644bcd40784dbf91cc7ae4086638a1?sid=ced3633b-ec98-4482-9dd0-0db434d29fa7

## 🚀 Ejecución de la Aplicación

### Requisitos Previos

1. **Flutter SDK**:
   - **Flutter**: `3.27.1`
   - **Dart**: `3.6.0`
2. **Instalar Dependencias**:
   ```bash
   flutter pub get
   ```

### Pasos para Ejecutar

1. Clona el repositorio:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   ```
2. Navega al directorio del proyecto:
   ```bash
   cd anamnesis_app
   ```
3. Ejecuta la aplicación con el entorno deseado:
   - **Desarrollo**:
     ```bash
     flutter run -t lib/main_development.dart
     ```
   - **Producción**:
     ```bash
     flutter run -t lib/main_production.dart
     ```
   - **Staging**:
     ```bash
     flutter run -t lib/main_staging.dart
     ```

---

## 🛠 Gestión de Estado

La aplicación utiliza el paquete `flutter_bloc` con `Cubit` para la gestión de estados. Este enfoque permite mantener la lógica desacoplada de la interfaz y facilita la escalabilidad.

---

## 📚 Decisiones Técnicas

1. **Plantilla Base del Proyecto**:

   - Generada con el CLI de [Very Good Ventures](https://verygood.ventures/), asegurando modularidad y organización limpia.

2. **Responsividad**:

   - Implementada con [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil) para adaptarse a diferentes tamaños de pantalla.

3. **Fuentes Personalizadas**:

   - Se incluye la fuente `Futura` como parte del diseño.

4. **Modularidad**:

   - La aplicación permite añadir fácilmente más pasos al flujo de anamnesis.

5. **Validaciones**:

   - Los campos obligatorios y selecciones son validados dinámicamente antes de permitir avanzar al siguiente paso.

6. **Localización**:
   - Soporte multilenguaje con archivos `.arb` localizados en la carpeta `l10n/arb`.

---

## 📂 Estructura del Proyecto

```plaintext
lib/
├── bootstrap.dart               # Inicialización de la app
├── main_development.dart        # Punto de entrada para desarrollo
├── main_production.dart         # Punto de entrada para producción
├── main_staging.dart            # Punto de entrada para staging
├── anamnesis/                   # Módulo principal de anamnesis
│   ├── anamnesis.dart           # Controlador principal del flujo
│   ├── cubit/                   # Lógica de estado con Cubit
│   │   ├── anamnesis_cubit.dart
│   │   ├── step_one_cubit.dart
│   │   └── step_two_cubit.dart
│   ├── model/                   # Modelos de datos
│   │   └── anamnesis_model.dart
│   └── view/                    # Pantallas del flujo
│       ├── anamnesis_page.dart
│       ├── step_one_page.dart
│       └── step_two_page.dart
├── app/                         # Configuración general de la app
│   ├── app.dart                 # Clase principal de la app
│   └── view/
│       └── app.dart             # Vista inicial de la app
├── common/                      # Componentes comunes reutilizables
│   ├── theme.dart               # Tema y colores personalizados
│   └── widgets/                 # Widgets reutilizables
│       ├── buttons.dart
│       └── widgets.dart
└── l10n/                        # Localización de idiomas
    ├── l10n.dart                # Configuración de localización
    └── arb/                     # Archivos de localización
        ├── app_en.arb
        └── app_es.arb
```

## 📚 Decisiones Técnicas

1. **Plantilla Base del Proyecto**:

   - Generada con el CLI de [Very Good Ventures](https://verygood.ventures/), asegurando modularidad y organización limpia.

2. **Responsividad**:

   - Implementada con [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil) para adaptarse a diferentes tamaños de pantalla.

3. **Fuentes Personalizadas**:

   - Se incluye la fuente `Futura` como parte del diseño.

4. **Modularidad**:

   - La aplicación permite añadir fácilmente más pasos al flujo de anamnesis.

5. **Validaciones**:

   - Los campos obligatorios y selecciones son validados dinámicamente antes de permitir avanzar al siguiente paso.

6. **Localización**:
   - Soporte multilenguaje con archivos `.arb` localizados en la carpeta `l10n/arb`.

---

## 📂 Estructura del Proyecto

```plaintext
lib/
├── bootstrap.dart               # Inicialización de la app
├── main_development.dart        # Punto de entrada para desarrollo
├── main_production.dart         # Punto de entrada para producción
├── main_staging.dart            # Punto de entrada para staging
├── anamnesis/                   # Módulo principal de anamnesis
│   ├── anamnesis.dart           # Controlador principal del flujo
│   ├── cubit/                   # Lógica de estado con Cubit
│   │   ├── anamnesis_cubit.dart
│   │   ├── step_one_cubit.dart
│   │   └── step_two_cubit.dart
│   ├── model/                   # Modelos de datos
│   │   └── anamnesis_model.dart
│   └── view/                    # Pantallas del flujo
│       ├── anamnesis_page.dart
│       ├── step_one_page.dart
│       └── step_two_page.dart
├── app/                         # Configuración general de la app
│   ├── app.dart                 # Clase principal de la app
│   └── view/
│       └── app.dart             # Vista inicial de la app
├── common/                      # Componentes comunes reutilizables
│   ├── theme.dart               # Tema y colores personalizados
│   └── widgets/                 # Widgets reutilizables
│       ├── buttons.dart
│       └── widgets.dart
└── l10n/                        # Localización de idiomas
    ├── l10n.dart                # Configuración de localización
    └── arb/                     # Archivos de localización
        ├── app_en.arb
        └── app_es.arb
```
