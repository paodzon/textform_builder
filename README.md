<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A simple text form builder that will let you create a form from a json data

## Getting started

Add the following to your pubspec.yaml file:

```dart
dependencies:
  textform_builder: ^0.0.1
```

## Usage

JSON Schema
```dart
{
  "formData": [
    {
      "id": '123',
      "label": "First Name",
      "type": "text",
      "isRequired": true,
    },
  ]
}
```

How to use widget

```dart
import 'package:flutter/material.dart';
import 'package:textform_builder/textform_builder.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  onSubmit(data) {
    debugPrint(data.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            const Text(
              'Sample Form',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 20),
            FormBuilder(
              data: sampleJson,
              onSubmit: (val) => onSubmit(val),
            )
          ],
        ),
      ),
    ));
  }
}
```

## Additional information

| Properties  | Description |
| ------------- | ------------- |
| data  | A map that is required to generate the text builder form.  |
| onSubmit  | A function that will return json response data when submit button is pressed  |