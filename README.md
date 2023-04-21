![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg)

# MicroTapeout

Digital chip designs are usually written in a hardware description language like RTL Verilog and then synthesized into a
set of mask layers suitable for fabrication. In order to make both synthesis and verification robust for huge designs,
a modular approach is used where the functionality of the circuit is decomposed into pre-built blocks called _standard cells_
with well-known and thoroughly tested behaviour and layout.

This design is a submission for [TinyTapeout 03](https://github.com/TinyTapeout/tinytapeout-03) which uses the 
[sky130\_fd\_sc\_hd](https://antmicro-skywater-pdk-docs.readthedocs.io/en/test-submodules-in-rtd/contents/libraries/sky130_fd_sc_hd/README.html)
standard cell library. It contains a copy of most cells in the library along with a multiplexing mechanism that
allows exposing any of them to the input/output pins.

There are 437 standard cells in our library, of which 42 don't produce output or require special power handling.
This leaves us with 395 cells. Each cell has up to 6 inputs and up to 2 outputs for a total of 427 outputs.
The same 6 inputs are fed into each cell in parallel while the 427 outputs are divided into 54 pages of 8 outputs each
with a multiplexer deciding which page is mapped to the output pins.

In order to drive the 6 cell inputs and the 6 bits of input to the mux from a total of 8 input pins we use some
registered logic. Input pin 0 is a clock signal while input pin 1 selects _page mode_. On each rising clock edge
we save input pins 2 to 7 into a page register if page mode is on and into an input register if page mode is off.
Cell inputs are then supplied from the input register and the mux operates on the page register.

Mapping of outputs to pages (also available as a [text file](src/outputs.txt)):

| page   | pin 0             | pin 1             | pin 2             | pin 3             | pin 4             | pin 5             | pin 6             | pin 7             |
|--------|-------------------|-------------------|-------------------|-------------------|-------------------|-------------------|-------------------|-------------------|
| 000000 | conb\_1.h         | conb\_1.l         | buf\_1            | buf\_2            | buf\_4            | buf\_6            | buf\_8            | buf\_12           |
| 000001 | buf\_16           | bufbuf\_8         | bufbuf\_16        | inv\_1            | inv\_2            | inv\_4            | inv\_6            | inv\_8            |
| 000010 | inv\_12           | inv\_16           | bufinv\_8         | bufinv\_16        | and2\_0           | and2\_1           | and2\_2           | and2\_4           |
| 000011 | and2b\_1          | and2b\_2          | and2b\_4          | and3\_1           | and3\_2           | and3\_4           | and3b\_1          | and3b\_2          |
| 000100 | and3b\_4          | and4\_1           | and4\_2           | and4\_4           | and4b\_1          | and4b\_2          | and4b\_4          | and4bb\_1         |
| 000101 | and4bb\_2         | and4bb\_4         | nand2\_1          | nand2\_2          | nand2\_4          | nand2\_8          | nand2b\_1         | nand2b\_2         |
| 000110 | nand2b\_4         | nand3\_1          | nand3\_2          | nand3\_4          | nand3b\_1         | nand3b\_2         | nand3b\_4         | nand4\_1          |
| 000111 | nand4\_2          | nand4\_4          | nand4b\_1         | nand4b\_2         | nand4b\_4         | nand4bb\_1        | nand4bb\_2        | nand4bb\_4        |
| 001000 | or2\_0            | or2\_1            | or2\_2            | or2\_4            | or2b\_1           | or2b\_2           | or2b\_4           | or3\_1            |
| 001001 | or3\_2            | or3\_4            | or3b\_1           | or3b\_2           | or3b\_4           | or4\_1            | or4\_2            | or4\_4            |
| 001010 | or4b\_1           | or4b\_2           | or4b\_4           | or4bb\_1          | or4bb\_2          | or4bb\_4          | nor2\_1           | nor2\_2           |
| 001011 | nor2\_4           | nor2\_8           | nor2b\_1          | nor2b\_2          | nor2b\_4          | nor3\_1           | nor3\_2           | nor3\_4           |
| 001100 | nor3b\_1          | nor3b\_2          | nor3b\_4          | nor4\_1           | nor4\_2           | nor4\_4           | nor4b\_1          | nor4b\_2          |
| 001101 | nor4b\_4          | nor4bb\_1         | nor4bb\_2         | nor4bb\_4         | xor2\_1           | xor2\_2           | xor2\_4           | xor3\_1           |
| 001110 | xor3\_2           | xor3\_4           | xnor2\_1          | xnor2\_2          | xnor2\_4          | xnor3\_1          | xnor3\_2          | xnor3\_4          |
| 001111 | a2111o\_1         | a2111o\_2         | a2111o\_4         | a2111oi\_0        | a2111oi\_1        | a2111oi\_2        | a2111oi\_4        | a211o\_1          |
| 010000 | a211o\_2          | a211o\_4          | a211oi\_1         | a211oi\_2         | a211oi\_4         | a21bo\_1          | a21bo\_2          | a21bo\_4          |
| 010001 | a21boi\_0         | a21boi\_1         | a21boi\_2         | a21boi\_4         | a21o\_1           | a21o\_2           | a21o\_4           | a21oi\_1          |
| 010010 | a21oi\_2          | a21oi\_4          | a221o\_1          | a221o\_2          | a221o\_4          | a221oi\_1         | a221oi\_2         | a221oi\_4         |
| 010011 | a222oi\_1         | a22o\_1           | a22o\_2           | a22o\_4           | a22oi\_1          | a22oi\_2          | a22oi\_4          | a2bb2o\_1         |
| 010100 | a2bb2o\_2         | a2bb2o\_4         | a2bb2oi\_1        | a2bb2oi\_2        | a2bb2oi\_4        | a311o\_1          | a311o\_2          | a311o\_4          |
| 010101 | a311oi\_1         | a311oi\_2         | a311oi\_4         | a31o\_1           | a31o\_2           | a31o\_4           | a31oi\_1          | a31oi\_2          |
| 010110 | a31oi\_4          | a32o\_1           | a32o\_2           | a32o\_4           | a32oi\_1          | a32oi\_2          | a32oi\_4          | a41o\_1           |
| 010111 | a41o\_2           | a41o\_4           | a41oi\_1          | a41oi\_2          | a41oi\_4          | o2111a\_1         | o2111a\_2         | o2111a\_4         |
| 011000 | o2111ai\_1        | o2111ai\_2        | o2111ai\_4        | o211a\_1          | o211a\_2          | o211a\_4          | o211ai\_1         | o211ai\_2         |
| 011001 | o211ai\_4         | o21a\_1           | o21a\_2           | o21a\_4           | o21ai\_0          | o21ai\_1          | o21ai\_2          | o21ai\_4          |
| 011010 | o21ba\_1          | o21ba\_2          | o21ba\_4          | o21bai\_1         | o21bai\_2         | o21bai\_4         | o221a\_1          | o221a\_2          |
| 011011 | o221a\_4          | o221ai\_1         | o221ai\_2         | o221ai\_4         | o22a\_1           | o22a\_2           | o22a\_4           | o22ai\_1          |
| 011100 | o22ai\_2          | o22ai\_4          | o2bb2a\_1         | o2bb2a\_2         | o2bb2a\_4         | o2bb2ai\_1        | o2bb2ai\_2        | o2bb2ai\_4        |
| 011101 | o311a\_1          | o311a\_2          | o311a\_4          | o311ai\_0         | o311ai\_1         | o311ai\_2         | o311ai\_4         | o31a\_1           |
| 011110 | o31a\_2           | o31a\_4           | o31ai\_1          | o31ai\_2          | o31ai\_4          | o32a\_1           | o32a\_2           | o32a\_4           |
| 011111 | o32ai\_1          | o32ai\_2          | o32ai\_4          | o41a\_1           | o41a\_2           | o41a\_4           | o41ai\_1          | o41ai\_2          |
| 100000 | o41ai\_4          | maj3\_1           | maj3\_2           | maj3\_4           | mux2\_1           | mux2\_2           | mux2\_4           | mux2\_8           |
| 100001 | mux2i\_1          | mux2i\_2          | mux2i\_4          | mux4\_1           | mux4\_2           | mux4\_4           | ha\_1.c           | ha\_1.s           |
| 100010 | ha\_2.c           | ha\_2.s           | ha\_4.c           | ha\_4.s           | fa\_1.c           | fa\_1.s           | fa\_2.c           | fa\_2.s           |
| 100011 | fa\_4.c           | fa\_4.s           | fah\_1.c          | fah\_1.s          | fahcin\_1.c       | fahcin\_1.s       | fahcon\_1.c       | fahcon\_1.s       |
| 100100 | dlxtp\_1          | dlxbp\_1.q        | dlxbp\_1.n        | dlxtn\_1          | dlxtn\_2          | dlxtn\_4          | dlxbn\_1.q        | dlxbn\_1.n        |
| 100101 | dlxbn\_2.q        | dlxbn\_2.n        | dlrtp\_1          | dlrtp\_2          | dlrtp\_4          | dlrbp\_1.q        | dlrbp\_1.n        | dlrbp\_2.q        |
| 100110 | dlrbp\_2.n        | dlrtn\_1          | dlrtn\_2          | dlrtn\_4          | dlrbn\_1.q        | dlrbn\_1.n        | dlrbn\_2.q        | dlrbn\_2.n        |
| 100111 | dfxtp\_1          | dfxtp\_2          | dfxtp\_4          | dfxbp\_1.q        | dfxbp\_1.n        | dfxbp\_2.q        | dfxbp\_2.n        | dfrtp\_1          |
| 101000 | dfrtp\_2          | dfrtp\_4          | dfrbp\_1.q        | dfrbp\_1.n        | dfrbp\_2.q        | dfrbp\_2.n        | dfrtn\_1          | dfstp\_1          |
| 101001 | dfstp\_2          | dfstp\_4          | dfsbp\_1.q        | dfsbp\_1.n        | dfsbp\_2.q        | dfsbp\_2.n        | dfbbp\_1.q        | dfbbp\_1.n        |
| 101010 | dfbbn\_1.q        | dfbbn\_1.n        | dfbbn\_2.q        | dfbbn\_2.n        | edfxtp\_1         | edfxbp\_1.q       | edfxbp\_1.n       | sdfxtp\_1         |
| 101011 | sdfxtp\_2         | sdfxtp\_4         | sdfxbp\_1.q       | sdfxbp\_1.n       | sdfxbp\_2.q       | sdfxbp\_2.n       | sdfrtp\_1         | sdfrtp\_2         |
| 101100 | sdfrtp\_4         | sdfrbp\_1.q       | sdfrbp\_1.n       | sdfrbp\_2.q       | sdfrbp\_2.n       | sdfrtn\_1         | sdfstp\_1         | sdfstp\_2         |
| 101101 | sdfstp\_4         | sdfsbp\_1.q       | sdfsbp\_1.n       | sdfsbp\_2.q       | sdfsbp\_2.n       | sdfbbp\_1.q       | sdfbbp\_1.n       | sdfbbn\_1.q       |
| 101110 | sdfbbn\_1.n       | sdfbbn\_2.q       | sdfbbn\_2.n       | sedfxtp\_1        | sedfxtp\_2        | sedfxtp\_4        | sedfxbp\_1.q      | sedfxbp\_1.n      |
| 101111 | sedfxbp\_2.q      | sedfxbp\_2.n      | ebufn\_1/\_2      | ebufn\_4/\_8      | einvp\_1/n\_0     | einvp\_1/n\_1     | einvp\_2/n\_2     | einvp\_4/n\_4     |
| 110000 | einvp\_8/n\_8     | dg~sd1\_1         | dg~4sd2\_1        | dg~4sd3\_1        | dm~6s2s\_1        | dm~6s4s\_1        | dm~6s6s\_1        | clkbuf\_1         |
| 110001 | clkbuf\_2         | clkbuf\_4         | clkbuf\_8         | clkbuf\_16        | clkinv\_1         | clkinv\_2         | clkinv\_4         | clkinv\_8         |
| 110010 | clkinv\_16        | clkinvlp\_2       | clkinvlp\_4       | cdb~4s15\_1       | cdb~4s15\_2       | cdb~4s18\_1       | cdb~4s18\_2       | cdb~4s25\_1       |
| 110011 | cdb~4s25\_2       | cdb~4s50\_1       | cdb~4s50\_2       | dlclkp\_1         | dlclkp\_2         | dlclkp\_4         | sdlclkp\_1        | sdlclkp\_2        |
| 110100 | sdlclkp\_4        | lpfii~0p\_1       | lpfii~0n\_1       | lpfii~1p\_1       | lpfii~1n\_1       | lpfii~latch\_1    | lpfibs~\_1        | lpfibs~\_2        |
| 110101 | lpfibs~\_4        | lpfibs~\_8        | lpfibs~\_16       |                   |                   |                   |                   |                   |

where dg~ = dlygate, dm~ = dlymetal, cdb~ = clkdlybuf, lpfii~ = lpflow\_inputiso, lpfibs~ = lpflow\_isobufsrc.
