
load Computer.hdl,
output-file ComputerRect.out,
compare-to ComputerRect.cmp,
output-list time%S1.4.1 ARegister[]%D1.7.1 DRegister[]%D1.7.1 PC[]%D0.4.0 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// Load a program written in the Hack machine language.
// The program draws a rectangle of width 16 pixels and 
// length RAM[0] at the top left of the screen.
ROM32K load Rect.hack,


// Draws a rectangle 16 pixels wide and 4 pixels long
set RAM16K[0] 4,
output;

repeat 63 {
    tick, tock, output;
}

