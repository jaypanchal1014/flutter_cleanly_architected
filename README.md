# Flutter Cleanly Architected

A lightweight CLI tool for generating Clean Architecture boilerplate in Flutter projects.

Create features, entities, and repositories instantly without manually creating folders and files.

---

## Features

✅ Feature Generator

✅ Entity Generator

✅ Repository Generator

✅ Global CLI Command

✅ Clean Architecture Folder Structure

✅ Lightweight & Fast

---

## Installation

### From Local Path

Clone the repository:

```bash
git clone <your_repository_url>

cd flutter_cleanly_architected
```

Activate globally:

```bash
dart pub global activate --source path .
```

Verify installation:

```bash
cleanly
```

Output:

```text
Flutter Cleanly Architected

Commands:

cleanly feature <name>
cleanly entity <name>
cleanly repository <name>
```

---

## Usage

### Create a Feature

```bash
cleanly feature auth
```

Generated structure:

```text
lib/
└── features/
    └── auth/
        ├── data/
        │   ├── datasources/
        │   ├── models/
        │   └── repositories/
        │
        ├── domain/
        │   ├── entities/
        │   ├── repositories/
        │   └── usecases/
        │
        └── presentation/
            ├── pages/
            ├── widgets/
            └── cubit/
```

---

### Create an Entity

```bash
cleanly entity user
```

Generated:

```dart
class User {
  const User();
}
```

Location:

```text
lib/features/user/domain/entities/user.dart
```

---

### Create a Repository

```bash
cleanly repository user
```

Generated:

```dart
abstract class UserRepository {

  Future<void> getAll();

  Future<void> getById(
    String id,
  );

  Future<void> create();

  Future<void> update();

  Future<void> delete(
    String id,
  );
}
```

Location:

```text
lib/features/user/domain/repositories/user_repository.dart
```

---

## Commands

### Generate Feature

```bash
cleanly feature <name>
```

Example:

```bash
cleanly feature auth
```

---

### Generate Entity

```bash
cleanly entity <name>
```

Example:

```bash
cleanly entity user
```

---

### Generate Repository

```bash
cleanly repository <name>
```

Example:

```bash
cleanly repository user
```

---

## Example Workflow

Create a complete feature structure:

```bash
cleanly feature auth

cleanly entity user

cleanly repository user
```

Generated:

```text
lib/
└── features/
    ├── auth/
    │
    └── user/
        └── domain/
            ├── entities/
            └── repositories/
```

---

## Testing

Create a new Flutter project:

```bash
flutter create test_app

cd test_app
```

Run commands:

```bash
cleanly feature auth

cleanly entity user

cleanly repository user
```

Verify generated files:

```text
lib/features/auth

lib/features/user/domain/entities/user.dart

lib/features/user/domain/repositories/user_repository.dart
```

---

## Why Flutter Cleanly Architected?

Creating a Clean Architecture structure repeatedly can be time-consuming.

This package helps developers:

* Save setup time
* Maintain consistent architecture
* Reduce repetitive boilerplate
* Start development faster

---

## Requirements

* Dart SDK 3.0+
* Flutter 3.0+

---
## License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files to deal in the Software without restriction.
