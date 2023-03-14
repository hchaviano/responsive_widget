# Responsive Widget

A Flutter package that provides a responsive widget template for building widgets that can adapt to different device types and screen sizes.

|             | Android | iOS   | Linux | macOS  | Web | Windows     |
|-------------|---------|-------|-------|--------|-----|-------------|
| **Support** | SDK 16+ | 11.0+ | Any   | 10.11+ | Any | Windows 10+ |

## Usage

To use the `Responsive` widget, simply create a new instance and provide the appropriate widget for each device type:

```dart
Responsive(
  mobile: MobileWidget(),
  tablet: TabletWidget(),
  desktop: DesktopWidget(),
)
```
By default, the widget will use the following breakpoints:

    minWidthBreakpoint: 650
    maxWidthBreakpoint: 1024
You can customize these values by passing them to the constructor:

```dart
Responsive(
    mobile: MobileWidget(),
    tablet: TabletWidget(),
    desktop: DesktopWidget(),
    minWidthBreakpoint: 500,
    maxWidthBreakpoint: 1200,
    )
```
## Contributing
Contributions are welcome! If you have any issues or feature requests, please open a new issue on GitHub. If you would like to contribute code, please fork the repository and submit a pull request.

## License
This package is licensed under the MIT License.