## Project Overview

This is a Flutter-based Point of Sale (POS) application named `esupa_store_pos`. The application is structured with a clear separation of concerns, utilizing a feature-driven architecture. It uses the BLoC pattern for state management, `go_router` for navigation, and `freezed` for immutable data models. The data layer is encapsulated in a separate local package called `data_layer`, which handles interactions with a PostgreSQL database and network requests using `dio`. The project also includes localization support using `flutter_intl`.

## Building and Running

### Prerequisites

- Flutter SDK is installed.
- Mason CLI is installed (`dart pub global activate mason_cli`).

### Getting Started

1.  **Install dependencies:**
    ```shell
    flutter pub get
    ```

2.  **Run the code generator:**
    ```shell
    dart run build_runner build --delete-conflicting-outputs
    ```

3.  **Run the app (development):**
    ```shell
    flutter run lib/main_development.dart
    ```

### Testing

To run the tests, use the following command:

```shell
flutter test
```

## Development Conventions

### Feature Development

New features are created using Mason. To create a new feature:

1.  Navigate to the `lib/features` directory.
2.  Run `mason make feature` and follow the prompts.

### State Management

The project uses the BLoC (Business Logic Component) pattern for state management. BLoCs are responsible for managing the state of a feature and handling business logic. Events are dispatched from the UI to the BLoC, which in turn emits new states.

### Data Layer

The `data_layer` package is responsible for all data operations. It includes repositories, data sources, and models. The repositories provide a clean API for the domain layer to access data, abstracting away the implementation details of data fetching and storage.

### Coding Style

The project follows the linting rules defined in the `analysis_options.yaml` file, which includes the recommended lints from the `flutter_lints` package and custom rules for BLoC.
