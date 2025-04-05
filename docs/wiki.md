# Whiteboard-Wiping Robot

## Overview
This project is a small robot that can crawl around a vertical whiteboard and clean it with a cloth. It adheres to the surface using magnets and moves using two motors. The goal is to automate wiping down a whiteboard after use, which could be a fun, practical tool for classrooms or home offices. The idea originated from my office mate, Dominic, who always joked that one of the junior engineers should build a whiteboard wiper to save us all some time.

The robot will use a Raspberry Pi Zero W running a custom Buildroot Linux image. It'll control the motors and use distance sensors to detect the edges of the board and avoid falling off. This project blends embedded systems, robotics, and practical applications.

---

## Target Build System
I'll be using Buildroot to generate a custom embedded Linux image for the Raspberry Pi Zero W.

---

## Hardware Platform
- Raspberry Pi Zero W
  This board is supported by Buildroot and has Wi-Fi, GPIO access, and low power consumption—perfect for a small robot.
- DC motors (DFRobot M019)
- IR or ToF Distance Sensors
- Magnets + lightweight 3D printed frame
- Battery pack
- Micro-USB for development

---

## Open Source Projects
- [pigpio library](https://abyz.me.uk/rpi/pigpio/) – for motor and GPIO control
- [Buildroot](https://buildroot.org/) – to generate the embedded Linux image

---

## Previous Content
- Buildroot config and customization from Assignment 5
- Potential reuse of `aesdsocket`-style logging or remote control pattern
- GPIO and interrupt experience from earlier assignments

---

## New Content
- Real-time motor control logic for differential drive
- Sensor-driven edge detection
- Basic path logic (zig-zag, spiral, or random coverage)
- Robot frame design and mounting with magnets
- Hardware testing on vertical surfaces

---

## Shared Material
This project is brand new but may borrow mechanical mounting ideas from personal 3D printer projects. All custom software and build config will be written from scratch.

---

## Source Code
- Buildroot config repo: https://github.com/cu-ecen-aeld/final-project-HartnettMatt
- Application source repo: https://github.com/HartnettMatt/AdvancedEmbeddedSoftware/tree/main/final-project/driver
- Hardware repo: https://github.com/HartnettMatt/AdvancedEmbeddedSoftware/tree/main/final-project/hardware

---

## Team
Matt Hartnett is handling all parts of the project.

---

## Schedule
Project schedule is tracked here:
https://github.com/matt-hartnett/whiteboard-wiper/wiki/Project-Schedule

---

## Sprint Issue
The issue for Sprint 1 is already created and assigned here:
https://github.com/HartnettMatt/AdvancedEmbeddedSoftware/issues/1

---

## README
A simplified project summary and link to this full proposal can be found in the project README:
https://github.com/HartnettMatt/AdvancedEmbeddedSoftware/tree/main/final-project/README.md

---

## Goals & Diagrams
The goal is to automate cleaning of a whiteboard using an embedded device with motor control and edge sensing. Here's a basic diagram of how it's put together:

```
[ Battery ]
     |
[ Pi Zero W ]
     |
[ Motor Driver ] ---> [ Left Motor ] -----                        |                 |--> Robot Frame with Cloth
                     [ Distance Sensors ] |
                        |                 |--> Magnetic Wheels
                     [ Right Motor ]------/
```

---

## Blockers
No blockers yet. If sensor mounting turns out to be tricky, I may 3D print brackets.

---

## Definition of Done
- Robot boots into Buildroot image on Pi Zero
- Can move forward/backward and stop at whiteboard edges
- Successfully wipes a section of the board without falling
- Code is committed and build system is reproducible