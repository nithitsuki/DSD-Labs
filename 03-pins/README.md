# Basic FPGA Pin Mapping Example

Here we will build on the counter that has been implemented in previous exercises, and implement it so that it gets control signals from buttons on the FPGA board.  This also introduces the notion of an XDC file as a way to specify constraints such as the location of pins

## Constraints

### Pin locations

FPGAs are general purpose systems, and as such have many pins that can be configured as Input/Output (I/O).  However, when an evaluation board such as the Pynq-Z1 is designed, the designers have to decide which pins on the FPGA are connected to which physical locations on the board.  This is outside the FPGA and cannot be changed at run-time.

The XDC file (Xilinx Design Constraints) is used to specify this mapping to the synthesis tool.  Pin locations are specified using an X-Y coordinate system, where the X-coordinate is a letter combination (`A`, `R`, `AB` etc.) and the Y-coordinate is a number (`1`, `14`, `23` etc.).  

For example, on the Pynq-Z1, pin location `R14` on the FPGA has been physically connected to one of the LEDs on the board.  Therefore, if we connect one of the outputs of our module to pin location `R14`, then we can toggle that output to make the LED toggle.

Note that the name we give to the module and the name we use in the XDC file must be the same, but can be changed as long as it is changed in both places.  In other words, you can change the name `led[0]` to `abc1` as long as the corresponding output port of your module is also changed to `abc1`.

As an example, the XDC file contains a mapping for the buttons - here since we only have a clock input, we rename the corresponding pin to `clkpulse` in the Verilog module as well as the XDC file.

### Pin properties

Along with the location, we also need to specify the type of pin: the FPGA allows multiple different voltage and current setttings to be applied to I/O buffers to allow interfacing with different kinds of peripherals.  The default is usually some form of `LVCMOS` - low-voltage complementary metal oxide semiconductor.  Other settings should be tried only if you are sure you are connecting to another device that is compatible with that setting.

After mapping the pins in this way, we can synthesize the bit file as usual and program it onto the FPGA using JTAG.  There are no VIOs or ILAs in this design, so we cannot see the internal values.

## Debouncing

After creating the module and running it, you may find that the counter does not behave as expected - it seems to run much faster than expected and toggles multiple times for each button press.  This is because the buttons *bounce* - there is a mechanical bouncing behaviour that causes the connection to make/break multiple times for each press.

You can bypass this by putting in appropriate *debouncing* circuitry.  A brief outline of what happens and what you can do is given at https://nandland.com/debounce-a-switch/, and you can also search for other techniques.  Implement this and demonstrate the counter working on the FPGA board.

## How to run

The source code for a sample counter is given in `counter.sv`.  The pin mappings are in the file `PYNQ-Z1.xdc`.

The folder `scripts/` contains several TCL scripts to create the project and generate the bit file.  This is because this approach is more structured than using Vivado.  In particular, since lab access does not provide you with a GUI but only a terminal, you cannot run the GUI version of Vivado.  

The scripts are hopefully easy enough to understand and modify if needed.  For now, the only real thing you need to do is type:

```sh
make
```

on the command line.  Assuming that you have the Xilinx tools set up properly in your system path, this should result in the files getting compiled, and finally a `.bit` file (bitstream) will be generated.
