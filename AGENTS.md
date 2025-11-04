# Folder Structure
## lib/features

The `lib/features` directory contains the different features of the application. Each feature is a self-contained module with its own domain, services, and view layers.

### Features

- **checkout**: This feature handles the entire checkout process. It includes functionalities for payment processing, applying discounts, and generating receipts. The checkout process is designed to be flexible, supporting various payment methods like cash, and credit cards.

- **home**: The home feature serves as the main entry point of the application after the user logs in. It provides access to all the other features of the application, such as selling, inventory management, and reporting. The home screen is designed to be intuitive and easy to navigate, allowing users to quickly find the functionality they need.

- **selling**: This feature is responsible for the core selling process of the application. It allows users to add products to the cart, manage the cart's contents, and initiate the checkout process. The selling feature is designed to be fast and efficient, enabling cashiers to process transactions quickly. It also includes a search functionality to easily find products in the inventory.

## Feature Folder Template

Each feature in the `lib/features` directory follows a consistent structure to ensure modularity, maintainability, and separation of concerns. A typical feature folder includes the following subdirectories:

-   **domain**: This directory contains the core business logic and entities related to the feature. It includes:
    -   `models`: Data models (often using `freezed`) that represent the entities within this feature.
    -   `use_cases`: Business rules and operations that interact with the repositories.
    -   `repositories`: Abstract interfaces defining how data is retrieved and stored for this feature.

-   **service**: This directory contains the concrete implementations of the repositories defined in the `domain` layer, as well as any other services specific to this feature. It handles interactions with data sources (e.g., API calls, database operations).

-   **view**: This directory is responsible for the user interface of the feature. It includes:
    -   `pages`: The main screens or views of the feature.
    -   `widgets`: Reusable UI components specific to this feature.
    -   `bloc`: (If using BLoC for state management) The BLoC (Business Logic Component) and related event/state files for managing the feature's state.

## lib/app

The `lib/app` directory encapsulates the core application setup, global state management, and routing. It defines the overall structure and behavior of the application, independent of specific features.

### Structure and Responsibilities

-   **`app.dart`**: Serves as a central export file for key application-level components.
-   **`view/`**: Contains the UI-related components for the main application shell.
    -   **`app_root.dart`**: The root widget of the application, responsible for initializing global BLoCs (like `AuthBloc`), configuring the `go_router` for navigation, and setting up the `MaterialApp.router`.
    -   **`network_aware_wrapper.dart`**: A wrapper widget that listens to network connectivity changes (via `NetworkBloc`) and displays appropriate UI feedback (e.g., a "no internet" dialog).
    -   **`pages/`**: Contains top-level application pages.
        -   **`page_router.dart`**: Defines the application's routing logic using `go_router`, mapping paths to specific pages.
        -   **`splash_page.dart`**: The initial loading screen of the application.
    -   **`bloc/`**: Houses global BLoC implementations for application-wide state management.
        -   **`auth/`**: Manages the authentication state of the user, including login and logout processes.
        -   **`network/`**: Monitors and manages the application's network connectivity status.

## lib/data_source

The `lib/data_source` directory is responsible for handling interactions with external data sources, such as APIs. It contains concrete implementations of repositories that abstract the data fetching and storage logic, providing a clean interface for the application's domain layer. This directory also includes the configuration for network clients (e.g., Dio), ensuring consistent and centralized management of API communication settings.

### Structure and Responsibilities

-   **`auth_repository.dart`**: Implements the authentication logic, including user login and potentially logout. It uses `Dio` to make HTTP requests to the authentication API endpoint and handles token management.
-   **`local_product_repository.dart`**: Provides the implementation for fetching product-related data. It interacts with a product API endpoint, retrieves product information, and maps it to the application's `Product` model. This repository also handles authentication by including the user's token in its requests.
