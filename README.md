# BMI Calculator - Flutter App

A modern, responsive BMI (Body Mass Index) calculator built with Flutter that features a beautiful UI, theme switching, and accurate BMI calculations.

## 📱 Features

### Core Functionality
- **BMI Calculation**: Accurate BMI calculation using standard formula
- **Input Validation**: Comprehensive validation for height, weight, and age
- **Gender Selection**: Male/Female selection for personalized results
- **Real-time Updates**: Live calculation updates as you adjust inputs

### User Experience
- **Beautiful UI**: Modern Material 3 design with smooth animations
- **Theme Switching**: Light and dark theme support
- **Responsive Design**: Optimized for mobile, tablet, and desktop
- **Orientation Support**: Adaptive layouts for portrait and landscape modes

### Results & Analysis
- **Visual Indicators**: Circular progress indicator with color-coded results
- **BMI Categories**: Clear classification (Underweight, Normal, Overweight, Obese, Extremely Obese)
- **Detailed Descriptions**: Personalized recommendations based on results
- **Color-coded Status**: Intuitive color system for different BMI ranges

## 🏗️ Architecture & Design Patterns

### State Management
This app uses **GetX** as the state management solution, providing:
- **Controllers**: Manage business logic and state
- **Reactive Programming**: Using `Rx` variables for automatic UI updates
- **Dependency Injection**: Simple controller management with `Get.put()` and `Get.find()`

### MVC Architecture
The app follows a clean **Model-View-Controller** pattern:
- **Models**: Data structures and constants (`AppConstants`, `Colors`)
- **Views**: UI components and pages (`HomePage`, `ResultPage`, Components)
- **Controllers**: Business logic and state management (`BMIController`, `ThemeController`)

### Component Architecture
Built with reusable, modular components:
- `HeightSelector`: Vertical slider for height input
- `WeightSelector`: Number input for weight
- `AgeSelector`: Number input for age
- `PrimaryButton`: Custom button component
- `ThemeChangerBtn`: Theme toggle button

## 🔧 Technical Implementation

### BMI Calculation Logic
```dart
// BMI formula: weight (kg) / height (m)²
calculatedBMI.value = weight.value / (heightInMeters * heightInMeters);
```

### BMI Categories & Thresholds
- **Underweight**: < 18.5 (Yellow)
- **Normal**: 18.5 - 24.9 (Green)
- **Overweight**: 25.0 - 29.9 (Red)
- **Obese**: 30.0 - 34.9 (Dark Red)
- **Extremely Obese**: ≥ 35.0 (Black)

### Responsive Design System
- **Breakpoints**: Mobile (600px), Tablet (900px), Desktop (1200px)
- **Orientation Awareness**: Different layouts for portrait vs landscape
- **Adaptive Sizing**: Components scale based on screen size
- **ResponsiveHelper Class**: Centralized responsive logic

### Theme Management
- **Light/Dark Theme Switching** with persistent state
- **Material 3 Design** principles
- **Dynamic Color Schemes** that adapt to theme changes
- **ThemeController** manages theme state and persistence

## 📱 Screenshots

### Home Page
- Gender selection (Male/Female)
- Height selector with vertical slider
- Weight and age input fields
- Calculate BMI button

### Results Page
- Circular BMI indicator
- Color-coded status display
- Detailed result description
- Navigation back to calculator

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (>=3.3.3)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or Physical Device

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/bmi_calculator.git
   cd bmi_calculator
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

**Android APK:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web
```

## 📦 Dependencies

### Core Dependencies
- **flutter**: Flutter SDK
- **get**: ^4.6.6 - State management and navigation
- **syncfusion_flutter_sliders**: ^25.2.5 - Advanced slider components
- **flutter_svg**: ^2.0.9 - SVG icon support
- **percent_indicator**: ^4.2.3 - Circular progress indicators

### Dev Dependencies
- **flutter_test**: Flutter testing framework
- **flutter_lints**: ^3.0.0 - Code quality and linting rules

## 🎯 Key Features Explained

### Input Validation
```dart
bool calculateBMI() {
  if (weight.value <= 0 || height.value <= 0) {
    return false; // Input validation
  }
  // ... calculation logic
}
```

### Responsive Layout Logic
```dart
Widget build(BuildContext context) {
  return ResponsiveHelper.isLandscape(context)
      ? _buildLandscapeLayout(context, bmiController)
      : _buildPortraitLayout(context, bmiController);
}
```

### Theme Switching
```dart
void toggleTheme() {
  _isDarkMode = !_isDarkMode;
  update(); // Triggers GetBuilder to rebuild
}
```

## 📁 Project Structure

```
lib/
├── Components/           # Reusable UI components
│   ├── AgeSelector.dart
│   ├── HeightSelector.dart
│   ├── PrimaryButton.dart
│   ├── RectButton.dart
│   ├── SecBtn.dart
│   ├── ThemeChangerBtn.dart
│   └── WeightSelector.dart
├── Config/              # Configuration files
│   ├── Colors.dart
│   ├── Constants.dart
│   ├── ResponsiveHelper.dart
│   └── Theme.dart
├── Controllers/         # Business logic and state management
│   ├── BMIController.dart
│   └── ThemeController.dart
├── Pages/              # Main application screens
│   ├── HomePage.dart
│   └── ResultPage.dart
└── main.dart           # Application entry point
```

## 🎨 Customization

### Adding New Themes
1. Define new colors in `Colors.dart`
2. Create theme data in `Theme.dart`
3. Add theme selection logic in `ThemeController`

### Modifying BMI Categories
1. Update thresholds in `BMIController.dart`
2. Modify color constants
3. Update status determination logic

### Adding New Input Fields
1. Create new selector component
2. Add to `BMIController`
3. Update calculation logic
4. Integrate into UI layout

## 🧪 Testing

Run tests using:
```bash
flutter test
```

The app includes comprehensive testing for:
- BMI calculation accuracy
- Input validation
- Theme switching
- Responsive behavior

## 📱 Platform Support

- ✅ **Android**: Full support with Material Design
- ✅ **iOS**: Full support with Cupertino design elements
- ✅ **Web**: Responsive web application
- ✅ **Windows**: Desktop application
- ✅ **macOS**: Desktop application
- ✅ **Linux**: Desktop application

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- GetX for state management solutions
- Syncfusion for slider components
- Material Design team for design guidelines

## 📞 Support

If you have any questions or need help:
- Create an issue in the repository
- Contact the development team
- Check the documentation

## 🔄 Version History

- **v1.0.0**: Initial release with core BMI calculation features
- **v1.0.1**: Bug fixes and performance improvements
- **v1.1.0**: Added theme switching and responsive design
- **v1.2.0**: Enhanced UI components and animations

---

**Made with ❤️ using Flutter**

*This README provides a comprehensive overview of the BMI Calculator Flutter app. For detailed technical information, please refer to the inline code documentation.*
