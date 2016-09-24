# Clock frequency divider

Example project for a clock frequency divider using a [Papilio One](http://papilio.cc/index.php?n=Papilio.PapilioOne) board.

The input frequency used for the divider is the 32 MHz operating frequency of the Papilio One, and it is reduced to 1 Hz.
The reduced frequency is sent out through one of the board's pins, which is then connected to an LED.
A *reset* input was also added using a push button, which reset the frequency counter to 0, and turned the output off.

A short video showing the project running can be found [here](https://www.youtube.com/watch?v=lgwjHOryijY "Papilio One seven segment example")

[![Papilio One seven segment example](http://img.youtube.com/vi/lgwjHOryijY/0.jpg)](https://www.youtube.com/watch?v=lgwjHOryijY)

The project was then modified to add an 8-bit shift register that was output through 8 pins on the Papilio board and connected to 8 LEDs.
A single LED would turn on at any given time, with the *on* LED being shifted to the right on every second.
The *reset* button would again reset the count, turn off the *pulse* LED, and only leave the first LED of the shift register on.

A short video showing these modifications running can be found [here](https://www.youtube.com/watch?v=rB8X5M3ruT8 "Papilio One seven segment example")

[![Papilio One seven segment example](http://img.youtube.com/vi/rB8X5M3ruT8/0.jpg)](https://www.youtube.com/watch?v=rB8X5M3ruT8)
