```markdown
# Circular Progress Design

**Circular Progress Design** is a lightweight and reusable circular progress indicator built with Swift. This component can be seamlessly integrated into any iOS application to display progress dynamically with smooth animations.

## Features

- **Custom Circular Progress**: Displays progress as a filling circular shape with adjustable opacity.  
- **Swift Animations**: Utilizes Swift's animation capabilities for a fluid and visually appealing user experience.  
- **Reusable Component**: Designed to be easily integrated into other applications with minimal setup.  

## Technologies Used

- **Swift**: For building the circular progress component.
- **Core Animation**: To handle smooth filling and opacity changes.
- **UIKit**: For creating the circular shape and managing the UI.

## How It Works

1. A circular shape is created using `CAShapeLayer`.  
2. The progress is represented by adjusting the layer’s opacity and stroke end properties.  
3. Swift's animation features are used to make the filling process smooth and dynamic, simulating a progress bar.  

## Usage

1. Import the `CircularProgress` class into your project.  
2. Initialize the circular progress in your view controller:
   ```swift
   let circularProgress = CircularProgress(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
   circularProgress.setProgress(percentage: 75, animated: true) // Set to 75% with animation
   view.addSubview(circularProgress)
   ```
3. Customize the progress bar's colors, thickness, or size as needed.

## Video Demo  

https://github.com/user-attachments/assets/8231aa82-d84f-4636-927f-77a793af190c
