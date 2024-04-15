# cupid

## About

Developed during debigIt hackathon in COPS Week 2024.

# Checkout the backend [here](https://github.com/criticic/cupid-backend)

<p float="left">
    <img src="assets/logos/cupid-logo-red-on-white.png" width="128" height="128">
  <img src="assets/logos/cupid-logo-white-on-red.png" width="128" height="128">
</p>

## Tech Stack

### Frontend

- Written In Dart using Flutter
- Google Signin
- Connects to the backend using REST API

### Backend

- Written in Golang using Go-Fiber
- Communicates with firebase using Firebase Admin SDK
- Generates a unique username for each user (like beautiful-panda or intelligent-mouse)
- Stores user data in Firestore
- Uses Robohash API to generate unique profile pictures

## Progress

- [x] Basic UI
- [x] Google Signin
- [] Chat Screen
- [x] Username Generation
- [x] Profile Picture Generation
- [x] Firestore Integration

## Demo

(had to submit laptop for repair, so this is all I could do)
https://drive.google.com/file/d/17PzGqTJxkgCRHsKb0GmxhyKqM6D89I3-/view?usp=share_link


## Description

cupid is a app which helps you meet new people and make new friends, based on shared interests and hobbies.

cupid inverts the traditional dating app model by first asking users to chat with pseudo-anonymous strangers before revealing their profiles, if they both say yes.

## Inspirations

- [Omegle Chat](https://www.omegle.com/)
- [Puppy Love IITK](https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://github.com/pclubiitk/puppy-love&ved=2ahUKEwijk5akxLWFAxUmjVYBHbbLAoUQFnoECBkQAQ&usg=AOvVaw0OwrioQ-FxYKPe0eDmJcZZ)

## Getting Started

### Build Instructions

- Clone the repository
- Run `flutter pub get` to install dependencies
- Run `flutter run` to build and run the app
