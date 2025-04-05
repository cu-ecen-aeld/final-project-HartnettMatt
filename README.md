# Whiteboard-Wiping Robot

This project is an autonomous, Raspberry Pi-powered robot that traverses a whiteboard to wipe it clean using a cloth and magnetic adhesion. It uses motor control and distance sensors to navigate safely and avoid falling off the edges of the board.

## Features
- Differential drive with two motors
- Edge detection using distance sensors
- Magnetic mounting for vertical operation
- Wipe-triggering via command or button
- Built with a custom Buildroot image

## Hardware
- Raspberry Pi 4
- Motor driver board (e.g., L298N or A4988)
- DC or stepper motors
- Distance sensors (e.g., VL53L0X, HC-SR04)
- Magnetic wheels or mounts
- Cleaning cloth attachment

## Build System
- Built using **Buildroot**
- Custom Linux image with motor and sensor control
- Optional: Wi-Fi integration for remote start

## Author
**Matt Hartnett**

## Full Project Proposal
View the full project details on the [GitHub Wiki page](https://github.com/cu-ecen-aeld/final-project-HartnettMatt/wiki/).