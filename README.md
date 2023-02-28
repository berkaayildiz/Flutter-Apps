<p align="center">
<img src="https://user-images.githubusercontent.com/37070272/219638474-f7ac2a87-8b4e-4e9c-a916-818b539f2d9f.png" width="128" height="128"/>
<p>
<h1 align="center">
Flutter Apps
</h1>

A collection repository of the basic apps I've developed with Flutter to practice. These apps were made for practice purposes only; they were not designed to be used in the real world. Some of the projects might not be finished and may contain bugs.

## Getting Started

These instructions will get you a copy of the selected project up and running on your local machine for development and testing purposes.

### Prerequisites

- Flutter SDK
- Xcode (If you want to run with an iPhone simulator)

### Installing

1. Create a Flutter project using the command:
```bash
flutter create [project_name]
```
2. Replace project's lib folder and pubspec.yaml file with the selected projects ones.

3. Run the project.

## Built With

These are the only tools used to build all of the projects.

- Flutter - The framework used
- Dart - The programming language used

## Contributing

You are more than welcome to open pull request if you want to contribute to any of the projects in this repository. You can also open an issue for the bugs in the projects.

# Projects
The general information about the projects in this repository may be found here.

---

## ChatBot App 

<img
  src="https://user-images.githubusercontent.com/37070272/220718904-94817555-af52-40b1-8fa3-42286060c4fd.png"
  width=39%
  alt="Screenshot"
  align="right"
/>

A simple chatbot app with a clean UI that can interact with users and play games with them.

### Usage
It is actually quite simple to use. The bot welcomes you and offers you three choices as soon as you launch the app. Based on your selection, the bot will carry on the conversation for you.

### Features

The chatbot app includes the following features:

- A chat interface that allows users to ask questions and receive responses
- A simple but extensible chatbot engine that can be customized to handle a variety of use cases
- Custom widgets that allows developers to manipulate the components easily

### Customizing the Chatbot

The chatbot is designed to be easily customized to handle a variety of use cases. To customize the chatbot, you can modify the [controllers](chatbot_app/lib/controllers) folder. This folder contains the functions for generating responses to user input.


### Acknowledgments

- This project was not created for real world usage, may contain bugs.
-  It was build for an assignment project.
- UI was inspired by Mitch Koko.

---

## Earthquake Tracker App 

<img
  src="https://user-images.githubusercontent.com/37070272/221447373-d3acc894-7fae-449c-afd3-9f2855741048.png"
  width=39%
  alt="Screenshot"
  align="right"
/>

"Son Depremler" is a Flutter-based mobile application that tracks the latest earthquakes in Turkey. The app uses an API to fetch earthquake data and displays the earthquake location, magnitude, and time in a list view.

### Usage
The most recent earthquake data will be fetched and displayed in a list format as soon as the app is launched on your mobile device. You can pull down on the screen to refresh the data and use the slider at the bottom of the screen to filter the earthquakes by their magnitude range.

### Features

The app includes the following features:

- Display latest earthquake data in a list view
- Filter earthquakes by their magnitude range
- Pull-to-refresh to fetch the latest data

### Customizing the API

You can change the API to implement it to other countries or different sources.

### Dependencies

- `http`
- `html_parser`

### Acknowledgments
- I didn't know much about HTML scraping so I used ChatGPT for that part.

---

## Countdown App

<img
  src="https://user-images.githubusercontent.com/37070272/221721155-1885e257-355d-4aa9-b26c-9616d932c3bb.png"
  width=39%
  alt="Screenshot"
  align="right"
/>

"Countdown!" is a Flutter application that provides a countdown timer to help you keep track of important events or deadlines. The app allows you to create multiple countdowns, each with its own title and end date/time.

### Usage

Tap the plus icon and enter the name and date of the event you want to create. You can create as many events as you want.

### Features

- Create multiple countdowns
- Customizable countdown titles
- Set an end date and time for each countdown
- Countdown displays days, hours, minutes, and seconds

### Customizing the App

Since I used a 3rd party package to implement countdown, it would be easier to make changes with the help of the documentation of the package.

### Dependencies

- `flutter_countdown_timer`

### Acknowledgments
- Learned more about null safety while developing this app.
- Has some bugs for large inputs.