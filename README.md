# Multi App Flavor - Example Project

This project demonstrates how to use the **[multi_app_flavor](https://github.com/kedirinesia/Multi-App-Flavor)** package to manage multiple application flavors (tenants) from a single codebase.

It showcases **3 distinct applications** (APP 1, APP 2, APP 3) that share common UI components but have different configurations, themes, and API endpoints.

##  Flavors Overview

| Flavor    | Name          | Color  | Entry Point               |
| --------- | ------------- | ------ | ------------------------- |
| **APP 1** | Application 1 | Blue   | `lib/apps/app1/main.dart` |
| **APP 2** | Application 2 | Green  | `lib/apps/app2/main.dart` |
| **APP 3** | Application 3 | Orange | `lib/apps/app3/main.dart` |

##  How to Run

You must specify the target file (`-t`) when running the app.

### Run Application 1

```bash
flutter run -t lib/apps/app1/main.dart
```

### Run Application 2

```bash
flutter run -t lib/apps/app2/main.dart
```

### Run Application 3

```bash
flutter run -t lib/apps/app3/main.dart
```

##  Project Structure

This example follows a modular structure to separate entry points while keeping shared logic centralized.

```
lib/
├── apps/                 # Modular entry points
│   ├── app1/
│   │   └── main.dart     # Configures FlavorConfig for App 1
│   ├── app2/
│   │   └── main.dart     # Configures FlavorConfig for App 2
│   └── app3/
│       └── main.dart     # Configures FlavorConfig for App 3
├── shared/
│   └── my_app.dart       # Shared UI code (FlavorBuilder example)
└── main.dart             # Default fallback (redirects to App 1)
```

##  Key Features Demonstrated

1.  **Singleton Configuration**: How to initialize `FlavorConfig` just once in `main()`.
2.  **Visual Banner**: Using `FlavorBanner` to show the current active flavor.
3.  **Conditional UI**: Using `FlavorBuilder` to render different icons/widgets based on the active app.
4.  **Custom Values**: Retrieving flavor-specific values like `baseUrl` dynamically.

---

Part of the [Multi App Flavor](https://github.com/kedirinesia/Multi-App-Flavor) package.
