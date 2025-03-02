# Clock Circuit For Time Management

## Overview

This project consists of three modules designed for time measurement purposes:

### Design

![Schema](https://github.com/user-attachments/assets/e9a7d1e7-2521-420e-b12f-edf73f8814fb)

### Main Module: stop_watch.v

This module serves as the primary component for time measurement.

### Secondary Modules:
1. **clock_1sec.v**: Generates a signal every second.
2. **counter.v**: Counts milliseconds.

Additionally, a testbench file **stop_watch_tb.v** is provided to validate the functionality of the main module.

## Environment

- Developed in Modelsim Altera Starter Edition 6.5b.

## Simulation Instructions

Once each module is successfully compiled, follow these steps to start the wave simulation inside the transcript window:

1. Type: `add wave *`
2. Type: `run 1000000 ns`
3. Type: `run 2 ms`

![Simulare_3](https://github.com/user-attachments/assets/16ab80b5-30ab-437b-9f0b-10546be4f11f)

![Simulare_2](https://github.com/user-attachments/assets/4f55ba53-4cb4-4331-971b-97ab658162af)

![Simulare_1](https://github.com/user-attachments/assets/5477fdd8-0b3d-436a-b91e-a37130ddbbd0)
