# BMI Calculator

A modern, responsive BMI (Body Mass Index) calculator built with Flutter and GetX for state management.

## Features

- **BMI Calculation**: Calculate BMI based on weight and height
- **Gender Selection**: Choose between male and female
- **Interactive UI**: Slider for height, increment/decrement buttons for weight and age
- **Theme Support**: Light and dark theme with smooth transitions
- **Fully Responsive Design**: Works perfectly on mobile, tablet, and desktop
- **Orientation Support**: Optimized layouts for both portrait and landscape
- **Real-time Updates**: Live BMI calculation and status updates
- **Error Handling**: Input validation and user feedback
- **Accessibility**: Proper semantic labels and touch targets

## Responsive Design

The application is fully responsive and adapts to different screen sizes and orientations:

### Screen Size Breakpoints
- **Mobile**: < 600px width
- **Tablet**: 600px - 900px width  
- **Desktop**: > 900px width

### Orientation Support
- **Portrait**: Vertical layout optimized for mobile devices
- **Landscape**: Horizontal layout with side-by-side components

### Responsive Features
- **Dynamic Sizing**: All components scale based on screen size
- **Adaptive Layouts**: Different layouts for mobile, tablet, and desktop
- **Flexible Spacing**: Responsive padding and margins
- **Scalable Text**: Text sizes adjust to screen size
- **Touch-Friendly**: Optimized touch targets for mobile devices

## Architecture

The application follows a clean architecture pattern with the following structure:

```
lib/
├── Components/          # Reusable UI components
├── Config/             # Configuration files (themes, colors, constants, responsive helper)
├── Controllers/        # GetX controllers for state management
├── Pages/              # Main application screens
└── main.dart           # Application entry point
```

### Key Components

- **BMIController**: Manages BMI calculation logic and state
- **ThemeController**: Handles theme switching between light and dark modes
- **ResponsiveHelper**: Manages responsive design across different screen sizes
- **Constants**: Centralized configuration for all magic numbers and strings
- **Color Classes**: Organized color schemes for light and dark themes

## Getting Started

### Prerequisites

- Flutter SDK (>=3.3.3)
- Dart SDK (>=3.0.0)
- Android Studio / VS Code

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd bmi_calculator
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the application:
```bash
flutter run
```

## Dependencies

- **get**: State management and navigation
- **syncfusion_flutter_sliders**: Custom slider components
- **flutter_svg**: SVG image support
- **percent_indicator**: Circular progress indicator

## Code Quality Improvements

### Refactoring Changes

1. **Naming Conventions**: All variables and methods now follow Dart naming conventions (camelCase)
2. **Constants Management**: Centralized all magic numbers and strings in `AppConstants`
3. **Error Handling**: Added proper validation and error messages
4. **Documentation**: Added comprehensive documentation for all classes and methods
5. **Code Organization**: Improved file structure and component separation
6. **Performance**: Optimized widget rebuilds and state management
7. **Accessibility**: Added proper semantic labels and touch targets

### Responsive Design Implementation

1. **ResponsiveHelper Class**: Centralized responsive design logic
2. **Breakpoint System**: Defined clear breakpoints for different screen sizes
3. **Dynamic Sizing**: All components scale based on screen size
4. **Orientation Support**: Different layouts for portrait and landscape
5. **Flexible Layouts**: Components adapt to available space
6. **Touch Optimization**: Optimized for touch interactions on mobile

### Key Improvements

- **Input Validation**: Weight, height, and age now have proper validation ranges
- **Error Feedback**: User-friendly error messages for invalid inputs
- **Default Values**: Sensible default values for all inputs
- **Theme Consistency**: Improved theme switching with proper color management
- **Component Reusability**: Better component abstraction and reusability
- **Type Safety**: Improved type safety throughout the application
- **Responsive UI**: Fully responsive design that works on all devices

## Usage

1. **Select Gender**: Choose between male and female using the gender buttons
2. **Set Height**: Use the vertical slider to set your height in centimeters
3. **Set Weight**: Use the + and - buttons to adjust your weight in kilograms
4. **Set Age**: Use the + and - buttons to adjust your age in years
5. **Calculate BMI**: Tap the "CALCULATE BMI" button to see your results
6. **View Results**: See your BMI value, status, and personalized description
7. **Switch Theme**: Use the theme toggle button to switch between light and dark modes

## Responsive Layout Examples

### Mobile Portrait
- Vertical layout with stacked components
- Optimized touch targets
- Compact spacing for small screens

### Mobile Landscape
- Side-by-side layout for better space utilization
- Reduced component heights
- Horizontal arrangement of selectors

### Tablet
- Balanced layout with medium-sized components
- Comfortable spacing and touch targets
- Optimized for touch and mouse interaction

### Desktop
- Larger components for better visibility
- Increased spacing for comfortable viewing
- Optimized for mouse interaction

## BMI Categories

- **Underweight**: BMI < 18.5
- **Normal**: BMI 18.5 - 24.9
- **Overweight**: BMI 25.0 - 29.9
- **Obese**: BMI 30.0 - 34.9
- **Extremely Obese**: BMI ≥ 35.0

## Testing Responsive Design

To test the responsive design:

1. **Mobile Testing**: Use Flutter's device simulator or physical device
2. **Tablet Testing**: Use tablet simulator or resize browser window
3. **Desktop Testing**: Use desktop simulator or web browser
4. **Orientation Testing**: Rotate device or change browser window dimensions

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Flutter team for the amazing framework
- GetX for state management
- Syncfusion for the slider components
- All contributors and maintainers
