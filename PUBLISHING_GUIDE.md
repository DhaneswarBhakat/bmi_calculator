# BMI Calculator - App Publishing Guide

## 📱 **Publishing Your BMI Calculator App**

This guide will walk you through the process of publishing your BMI Calculator app to the Google Play Store and Apple App Store.

## 🚀 **Pre-Publishing Checklist**

### **App Configuration**
- ✅ App name: "BMI Calculator"
- ✅ Version: 1.0.0+1
- ✅ Description: Updated in pubspec.yaml
- ✅ Dependencies: All updated to latest versions
- ✅ Responsive design: Implemented
- ✅ Theme switching: Working properly

### **Required Assets**

#### **App Icons**
You need to create app icons in the following sizes:

**Android (mipmap folders):**
- mipmap-hdpi: 72x72 px
- mipmap-mdpi: 48x48 px
- mipmap-xhdpi: 96x96 px
- mipmap-xxhdpi: 144x144 px
- mipmap-xxxhdpi: 192x192 px

**iOS (Assets.xcassets/AppIcon.appiconset):**
- 1024x1024 px (App Store)
- Various sizes from 20x20 to 1024x1024

#### **Screenshots**
Create screenshots for different device sizes:
- Phone: 1080x1920 px (portrait)
- Tablet: 1200x1920 px (portrait)
- Phone landscape: 1920x1080 px
- Tablet landscape: 1920x1200 px

#### **App Store Graphics**
- Feature graphic: 1024x500 px (Google Play)
- App preview videos: 30 seconds max

## 📲 **Google Play Store Publishing**

### **Step 1: Google Play Console Setup**
1. Go to [Google Play Console](https://play.google.com/console)
2. Create a developer account ($25 one-time fee)
3. Create a new app
4. Fill in basic app information

### **Step 2: App Information**
```
App Name: BMI Calculator
Short Description: Calculate your BMI with a beautiful, responsive interface
Full Description: 
A modern, responsive BMI (Body Mass Index) calculator with beautiful UI and accurate calculations. Features include gender selection, interactive sliders, theme switching, and detailed BMI analysis.

Key Features:
• Accurate BMI calculation
• Gender-specific analysis
• Interactive height slider
• Weight and age controls
• Light/Dark theme support
• Responsive design for all devices
• Detailed BMI status and recommendations
• Beautiful, modern interface

Perfect for health-conscious individuals who want to track their BMI with a user-friendly, professional calculator.
```

### **Step 3: Content Rating**
- Complete the content rating questionnaire
- Your app will likely get "Everyone" rating

### **Step 4: App Release**
1. **Build Release APK:**
   ```bash
   flutter build appbundle --release
   ```

2. **Upload to Google Play Console:**
   - Go to "Production" track
   - Upload the generated .aab file
   - Add release notes

### **Step 5: Store Listing**
- Upload screenshots for different device sizes
- Add feature graphic
- Set up app categories (Health & Fitness)
- Add privacy policy URL

### **Step 6: Pricing & Distribution**
- Set app as free
- Choose countries for distribution
- Set up content guidelines compliance

## 🍎 **Apple App Store Publishing**

### **Step 1: Apple Developer Account**
1. Enroll in Apple Developer Program ($99/year)
2. Access App Store Connect

### **Step 2: App Store Connect Setup**
1. Create a new app in App Store Connect
2. Fill in app information

### **Step 3: App Information**
```
App Name: BMI Calculator
Subtitle: Calculate BMI with Beautiful UI
Description:
Calculate your BMI with a beautiful, responsive interface designed for modern devices.

FEATURES:
• Accurate BMI calculation based on WHO standards
• Gender-specific analysis and recommendations
• Interactive height slider with smooth controls
• Easy weight and age adjustment
• Light and dark theme support
• Responsive design for iPhone and iPad
• Detailed BMI status with color-coded results
• Professional, modern interface

Perfect for health-conscious individuals who want to track their BMI with a user-friendly, professional calculator. The app works seamlessly on all iOS devices with support for both portrait and landscape orientations.

Download now and start monitoring your health with our beautiful BMI calculator!
```

### **Step 4: Build and Upload**
1. **Build iOS App:**
   ```bash
   flutter build ios --release
   ```

2. **Archive in Xcode:**
   - Open ios/Runner.xcworkspace in Xcode
   - Select "Any iOS Device" as target
   - Product → Archive
   - Upload to App Store Connect

### **Step 5: App Store Listing**
- Upload screenshots for different iPhone/iPad sizes
- Add app preview videos
- Set up app categories (Health & Fitness)
- Add privacy policy

## 🔧 **Technical Requirements**

### **Android Requirements**
- Minimum SDK: API 21 (Android 5.0)
- Target SDK: API 34 (Android 14)
- App bundle format (.aab)
- Signed with release keystore

### **iOS Requirements**
- Minimum iOS version: 12.0
- Target iOS version: 17.0
- Universal app (iPhone + iPad)
- Proper app icons and launch screens

## 📋 **Privacy Policy**

Create a privacy policy for your app. Here's a template:

```
Privacy Policy for BMI Calculator

This app does not collect, store, or transmit any personal data. All calculations are performed locally on your device.

Data Collection: None
Data Storage: None
Data Transmission: None
Third-party Services: None

Your privacy is important to us. This app is designed to work completely offline without collecting any personal information.
```

## 🎨 **App Store Optimization (ASO)**

### **Keywords for Google Play:**
- BMI calculator
- Body mass index
- Health calculator
- Weight calculator
- Fitness app
- Health tracker

### **Keywords for App Store:**
- BMI
- Calculator
- Health
- Fitness
- Weight
- Body mass index

## 📊 **Post-Publishing**

### **Monitor Performance**
- Track downloads and ratings
- Monitor crash reports
- Respond to user reviews
- Update app regularly

### **Update Strategy**
- Plan regular updates (every 2-3 months)
- Add new features based on user feedback
- Fix bugs and improve performance
- Keep dependencies updated

## 🚨 **Important Notes**

1. **Application ID**: Change `com.yourcompany.bmi_calculator` to your own unique identifier
2. **App Signing**: Set up proper signing keys for production
3. **Testing**: Test thoroughly on different devices before release
4. **Compliance**: Ensure compliance with store guidelines
5. **Support**: Provide support contact information

## 📞 **Support**

For publishing assistance:
- Google Play Console Help: https://support.google.com/googleplay/
- Apple Developer Support: https://developer.apple.com/support/
- Flutter Documentation: https://docs.flutter.dev/deployment

---

**Good luck with your app launch! 🚀** 