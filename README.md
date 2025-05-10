# Lab Exercises for FPGAs

These lab exercises are designed for the in-person portion of the course Digital System Design, part of the online BS Electronic Systems, IIT Madras.  The material is provided for public use, but some of the details will only make sense in the context of the course itself, and therefore this is primarily intended for students of this course.

A list of exercises that students need to demonstrate during the in-person labs is given below.  These are meant to gauge your understanding of:

- Verilog HDL based design
- Test benches and test procedures; software simulation 
- Synthesis and generation of hardware bit files
- Testing on hardware using VIO and ILA
- Testing on hardware with different clocks and relating this to critical path

## Exercises

- [01 - Basic Verilog example](01-counter/) - software simulation to be shown on [EDA Playground](https://www.edaplayground.com/)
- [02 - Counter on FPGA](02-counter-fpga/) - same design as above but on FPGA using ILA / VIO
- [03 - Simple combinational adder](03-adder/) - Verilog code for adder to be interfaced with wrapper module with data communication using Pynq
- [04 - Multiplier Critical Path](04-mult/) - changing the PL clock Pynq and relating to the critical path for a multiplier

## Preparation before lab

You are expected to go through the above exercises before coming for the lab session.  In particular, you are allowed to write your code and test in advance if needed.  Your marks for the assignments will be based on how well you are able to explain your work to the TAs.  If you are confident of the work, you can skip ahead to the more advanced assignments and get full marks for the others provided you do well on the later ones.

## During Lab

TAs will give a brief demonstration of using the board at the beginning of the lab.  After this you can contact them to set up slots for demonstrating your work.  If you wish to go beyond the main 4 assignments here, you may need to wait until other students have completed their demos.  A limited number of boards are available in the lab, so it may not be possible for you to work with the boards for a long time.

## Board Setup

*Note: This section only applies if you want to work with a board ahead of time.  During the lab sessions you will be working on systems where the software is already installed.*

These examples are built mostly around the [Pynq Z1 board](https://digilent.com/shop/pynq-z1-python-productivity-for-zynq-7000-arm-fpga-soc/), and it is assumed that you have followed the instructions for [board setup](https://pynq.readthedocs.io/en/latest/getting_started/pynq_z1_setup.html).  Most of the steps here can be performed without physical access to the board.  While this is a good general purpose board for learning, please note that there are probably better boards available now: in particular the Pynq Z2 already exists, as does the Pynq ZU, and there are possibly other less expensive boards that may or may not be Pynq compatible.  This tutorial should not be taken as a specific recommendation to acquire these boards specifically.

---

© 2025 Nitin Chandrachoodan, IIT Madras
This work is licensed under a Creative Commons Attribution 4.0 International License.

[![License: CC BY 4.0](https://licensebuttons.net/l/by/4.0/88x31.png)](https://creativecommons.org/licenses/by/4.0/)
