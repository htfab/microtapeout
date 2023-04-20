import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles
import random
import itertools

async def check_cell_pin(dut, cell_pin, io_pairs):
    dut.page_mode.value = 1
    dut.switches.value = cell_pin // 8
    await ClockCycles(dut.clk, 2)
    dut.page_mode.value = 0
    for i, o in io_pairs:
        dut.switches.value = i
        await ClockCycles(dut.clk, 2)
        r = dut.results.value[~cell_pin%8]
        istr = bin(i)[2:].rjust(6, '0')
        dut._log.info(f"cell_pin {cell_pin} input {istr} output {r} expected {o}")
        assert r == o

def auto_iter(in_iter):
    try:
        return iter(in_iter)
    except TypeError:
        return iter((in_iter,))

def expand_dict(in_dict):
    return {p: v for k, v in in_dict.items() for p in auto_iter(k)}

def combinational(num_inputs, func, repeat=5, seed=383):
    rnd = random.Random(seed)
    mask = -(1 << num_inputs)
    masked_rndseq = [0] + [rnd.randrange(64) & mask for _ in range(1, repeat)]

    basic_tests = []
    for inputs in itertools.product(range(2), repeat=num_inputs):
        inp_bin = sum(j << i for i, j in enumerate(inputs))
        out = func(*inputs) & 1
        basic_tests.append((inp_bin, out))

    tests = []
    for inp_rnd in masked_rndseq:
        for inp_bin, out in basic_tests:
            tests.append((inp_bin | inp_rnd, out))
    return tuple(tests)

@cocotb.test()
async def test_microtapeout(dut):
    dut._log.info("start")
    clock = Clock(dut.clk, 20, units='us')
    cocotb.start_soon(clock.start())

    pin_mapping = expand_dict({
        (0,): 'conb.HI',
        (1,): 'conb.LO',
        (2, 3, 4, 5, 6, 7, 8, 9, 10): 'buf',
        (11, 12, 13, 14, 15, 16, 17, 18, 19): 'inv',
        (20, 21, 22, 23): 'and2',
        (24, 25, 26): 'and2b',
        (27, 28, 29): 'and3',
        (30, 31, 32): 'and3b',
        (33, 34, 35): 'and4',
        (36, 37, 38): 'and4b',
        (39, 40, 41): 'and4bb',
        (42, 43, 44, 45): 'nand2',
        (46, 47, 48): 'nand2b',
        (49, 50, 51): 'nand3',
        (52, 53, 54): 'nand3b',
        (55, 56, 57): 'nand4',
        (58, 59, 60): 'nand4b',
        (61, 62, 63): 'nand4bb',
        (64, 65, 66, 67): 'or2',
        (68, 69, 70): 'or2b',
        (71, 72, 73): 'or3',
        (74, 75, 76): 'or3b',
        (77, 78, 79): 'or4',
        (80, 81, 82): 'or4b',
        (83, 84, 85): 'or4bb',
        (86, 87, 88, 89): 'nor2',
        (90, 91, 92): 'nor2b',
        (93, 94, 95): 'nor3',
        (96, 97, 98): 'nor3b',
        (99, 100, 101): 'nor4',
        (102, 103, 104): 'nor4b',
        (105, 106, 107): 'nor4bb',
        (108, 109, 110): 'xor2',
        (111, 112, 113): 'xor3',
        (114, 115, 116): 'xnor2',
        (117, 118, 119): 'xnor3',
        (120, 121, 122): 'a2111o',
        (123, 124, 125, 126): 'a2111oi',
        (127, 128, 129): 'a211o',
        (130, 131, 132): 'a211oi',
        (133, 134, 135): 'a21bo',
        (136, 137, 138, 139): 'a21boi',
        (140, 141, 142): 'a21o',
        (143, 144, 145): 'a21oi',
        (146, 147, 148): 'a221o',
        (149, 150, 151): 'a221oi',
        (152,): 'a222oi',
        (153, 154, 155): 'a22o',
        (156, 157, 158): 'a22oi',
        (159, 160, 161): 'a2bb2o',
        (162, 163, 164): 'a2bb2oi',
        (165, 166, 167): 'a311o',
        (168, 169, 170): 'a311oi',
        (171, 172, 173): 'a31o',
        (174, 175, 176): 'a31oi',
        (177, 178, 179): 'a32o',
        (180, 181, 182): 'a32oi',
        (183, 184, 185): 'a41o',
        (186, 187, 188): 'a41oi',
        (189, 190, 191): 'o2111a',
        (192, 193, 194): 'o2111ai',
        (195, 196, 197): 'o211a',
        (198, 199, 200): 'o211ai',
        (201, 202, 203): 'o21a',
        (204, 205, 206, 207): 'o21ai',
        (208, 209, 210): 'o21ba',
        (211, 212, 213): 'o21bai',
        (214, 215, 216): 'o221a',
        (217, 218, 219): 'o221ai',
        (220, 221, 222): 'o22a',
        (223, 224, 225): 'o22ai',
        (226, 227, 228): 'o2bb2a',
        (229, 230, 231): 'o2bb2ai',
        (232, 233, 234): 'o311a',
        (235, 236, 237, 238): 'o311ai',
        (239, 240, 241): 'o31a',
        (242, 243, 244): 'o31ai',
        (245, 246, 247): 'o32a',
        (248, 249, 250): 'o32ai',
        (251, 252, 253): 'o41a',
        (254, 255, 256): 'o41ai',
        (257, 258, 259): 'maj3',
        (260, 261, 262, 263): 'mux2',
        (264, 265, 266): 'mux2i',
        (267, 268, 269): 'mux4',
        (270, 272, 274): 'ha.COUT',
        (271, 273, 275): 'ha.SUM',
        (276, 278, 280): 'fa.COUT',
        (277, 279, 281): 'fa.SUM',
        (282,): 'fah.COUT',
        (283,): 'fah.SUM',
        (284,): 'fahcin.COUT',
        (285,): 'fahcin.SUM',
        (286,): 'fahcon.COUT_N',
        (287,): 'fahcon.SUM',

        (378, 379): 'ebufn+ebufp',
        (380, 381, 382, 383, 384): 'einvn+einvp',
        (385, 386, 387): 'dlygate',
        (388, 389, 390): 'dlymetal',
        (391, 392, 393, 394, 395): 'clkbuf',
        (396, 397, 398, 399, 400): 'clkinv',
        (401, 402): 'clkinvlp',
        (403, 404, 405, 406, 407, 408, 409, 410): 'clkdlybuf',

        (417,): 'lpflow_inputiso0p',
        (418,): 'lpflow_inputiso0n',
        (419,): 'lpflow_inputiso1p',
        (420,): 'lpflow_inputiso1n',

        (422, 423, 424, 425, 426): 'lpflow_isobufsrc',

    })

    cell_mapping = {
        'ha.COUT': 'and2',
        'ha.SUM': 'xor2',
        'fa.COUT': 'maj3',
        'fa.SUM': 'xor3',
        'fah.COUT': 'maj3',
        'fah.SUM': 'xor3',
        'fahcin.COUT': 'maj3#b',
        'fahcin.SUM': 'xnor3',
        'fahcon.COUT_N': 'maj3#i',
        'fahcon.SUM': 'xor3',
        'ebufn+ebufp': 'mux2',
        'einvn+einvp': 'mux2i',
        'dlygate': 'buf',
        'dlymetal': 'buf',
        'clkbuf': 'buf',
        'clkinv': 'inv',
        'clkinvlp': 'inv',
        'clkdlybuf': 'buf',
        'lpflow_inputiso0p': 'and2b#r',
        'lpflow_inputiso0n': 'and2',
        'lpflow_inputiso1p': 'or2',
        'lpflow_inputiso1n': 'or2b',
        'lpflow_isobufsrc': 'and2b#r',
    }

    pin_tests = {
        'conb.HI': combinational(0, lambda: 1),
        'conb.LO': combinational(0, lambda: 0),
        'buf':     combinational(1, lambda a: a),
        'inv':     combinational(1, lambda a: ~a),
        'and2':    combinational(2, lambda a,b: a & b),
        'and2b':   combinational(2, lambda a,b: ~a & b),
        'and2b#r': combinational(2, lambda a,b: a & ~b),
        'and3':    combinational(3, lambda a,b,c: a & b & c),
        'and3b':   combinational(3, lambda a,b,c: ~a & b & c),
        'and4':    combinational(4, lambda a,b,c,d: a & b & c & d),
        'and4b':   combinational(4, lambda a,b,c,d: ~a & b & c & d),
        'and4bb':  combinational(4, lambda a,b,c,d: ~a & ~b & c & d),
        'nand2':   combinational(2, lambda a,b: ~(a & b)),
        'nand2b':  combinational(2, lambda a,b: ~(~a & b)),
        'nand3':   combinational(3, lambda a,b,c: ~(a & b & c)),
        'nand3b':  combinational(3, lambda a,b,c: ~(~a & b & c)),
        'nand4':   combinational(4, lambda a,b,c,d: ~(a & b & c & d)),
        'nand4b':  combinational(4, lambda a,b,c,d: ~(~a & b & c & d)),
        'nand4bb': combinational(4, lambda a,b,c,d: ~(~a & ~b & c & d)),
        'or2':     combinational(2, lambda a,b: a | b),
        'or2b':    combinational(2, lambda a,b: a | ~b),
        'or3':     combinational(3, lambda a,b,c: a | b | c),
        'or3b':    combinational(3, lambda a,b,c: a | b | ~c),
        'or4':     combinational(4, lambda a,b,c,d: a | b | c | d),
        'or4b':    combinational(4, lambda a,b,c,d: a | b | c | ~d),
        'or4bb':   combinational(4, lambda a,b,c,d: a | b | ~c | ~d),
        'nor2':    combinational(2, lambda a,b: ~(a | b)),
        'nor2b':   combinational(2, lambda a,b: ~(a | ~b)),
        'nor3':    combinational(3, lambda a,b,c: ~(a | b | c)),
        'nor3b':   combinational(3, lambda a,b,c: ~(a | b | ~c)),
        'nor4':    combinational(4, lambda a,b,c,d: ~(a | b | c | d)),
        'nor4b':   combinational(4, lambda a,b,c,d: ~(a | b | c | ~d)),
        'nor4bb':  combinational(4, lambda a,b,c,d: ~(a | b | ~c | ~d)),
        'xor2':    combinational(2, lambda a,b: a ^ b),
        'xor3':    combinational(3, lambda a,b,c: a ^ b ^ c),
        'xnor2':   combinational(2, lambda a,b: ~(a ^ b)),
        'xnor3':   combinational(3, lambda a,b,c: ~(a ^ b ^ c)),
        'a2111o':  combinational(5, lambda a,b,c,d,e: (a & b) | c | d | e),
        'a2111oi': combinational(5, lambda a,b,c,d,e: ~((a & b) | c | d | e)),
        'a211o':   combinational(4, lambda a,b,c,d: (a & b) | c | d),
        'a211oi':  combinational(4, lambda a,b,c,d: ~((a & b) | c | d)),
        'a21bo':   combinational(3, lambda a,b,c: (a & b) | ~c),
        'a21boi':  combinational(3, lambda a,b,c: ~((a & b) | ~c)),
        'a21o':    combinational(3, lambda a,b,c: (a & b) | c),
        'a21oi':   combinational(3, lambda a,b,c: ~((a & b) | c)),
        'a221o':   combinational(5, lambda a,b,c,d,e: (a & b) | (c & d) | e),
        'a221oi':  combinational(5, lambda a,b,c,d,e: ~((a & b) | (c & d) | e)),
        'a222oi':  combinational(6, lambda a,b,c,d,e,f: ~((a & b) | (c & d) | (e & f))),
        'a22o':    combinational(4, lambda a,b,c,d: (a & b) | (c & d)),
        'a22oi':   combinational(4, lambda a,b,c,d: ~((a & b) | (c & d))),
        'a2bb2o':  combinational(4, lambda a,b,c,d: (~a & ~b) | (c & d)),
        'a2bb2oi': combinational(4, lambda a,b,c,d: ~((~a & ~b) | (c & d))),
        'a311o':   combinational(5, lambda a,b,c,d,e: (a & b & c) | d | e),
        'a311oi':  combinational(5, lambda a,b,c,d,e: ~((a & b & c) | d | e)),
        'a31o':    combinational(4, lambda a,b,c,d: (a & b & c) | d),
        'a31oi':   combinational(4, lambda a,b,c,d: ~((a & b & c) | d)),
        'a32o':    combinational(5, lambda a,b,c,d,e: (a & b & c) | (d & e)),
        'a32oi':   combinational(5, lambda a,b,c,d,e: ~((a & b & c) | (d & e))),
        'a41o':    combinational(5, lambda a,b,c,d,e: (a & b & c & d) | e),
        'a41oi':   combinational(5, lambda a,b,c,d,e: ~((a & b & c & d) | e)),
        'o2111a':  combinational(5, lambda a,b,c,d,e: (a | b) & c & d & e),
        'o2111ai': combinational(5, lambda a,b,c,d,e: ~((a | b) & c & d & e)),
        'o211a':   combinational(4, lambda a,b,c,d: (a | b) & c & d),
        'o211ai':  combinational(4, lambda a,b,c,d: ~((a | b) & c & d)),
        'o21ba':   combinational(3, lambda a,b,c: (a | b) & ~c),
        'o21bai':  combinational(3, lambda a,b,c: ~((a | b) & ~c)),
        'o21a':    combinational(3, lambda a,b,c: (a | b) & c),
        'o21ai':   combinational(3, lambda a,b,c: ~((a | b) & c)),
        'o221a':   combinational(5, lambda a,b,c,d,e: (a | b) & (c | d) & e),
        'o221ai':  combinational(5, lambda a,b,c,d,e: ~((a | b) & (c | d) & e)),
        'o222ai':  combinational(6, lambda a,b,c,d,e,f: ~((a | b) & (c | d) & (e | f))),
        'o22a':    combinational(4, lambda a,b,c,d: (a | b) & (c | d)),
        'o22ai':   combinational(4, lambda a,b,c,d: ~((a | b) & (c | d))),
        'o2bb2a':  combinational(4, lambda a,b,c,d: (~a | ~b) & (c | d)),
        'o2bb2ai': combinational(4, lambda a,b,c,d: ~((~a | ~b) & (c | d))),
        'o311a':   combinational(5, lambda a,b,c,d,e: (a | b | c) & d & e),
        'o311ai':  combinational(5, lambda a,b,c,d,e: ~((a | b | c) & d & e)),
        'o31a':    combinational(4, lambda a,b,c,d: (a | b | c) & d),
        'o31ai':   combinational(4, lambda a,b,c,d: ~((a | b | c) & d)),
        'o32a':    combinational(5, lambda a,b,c,d,e: (a | b | c) & (d | e)),
        'o32ai':   combinational(5, lambda a,b,c,d,e: ~((a | b | c) & (d | e))),
        'o41a':    combinational(5, lambda a,b,c,d,e: (a | b | c | d) & e),
        'o41ai':   combinational(5, lambda a,b,c,d,e: ~((a | b | c | d) & e)),
        'maj3':    combinational(3, lambda a,b,c: a + b + c >= 2),
        'maj3#b':  combinational(3, lambda a,b,c: a + b + 1-c >= 2),
        'maj3#i' : combinational(3, lambda a,b,c: ~(a + b + c >= 2)),
        'mux2':    combinational(3, lambda a,b,c: (a, b)[c]),
        'mux2i':   combinational(3, lambda a,b,c: (~a, ~b)[c]),
        'mux4':    combinational(6, lambda a,b,c,d,e,f: (a, b, c, d)[e + 2*f]),
    }

    for i in range(427):
        if 288 <= i <= 377 or 411 <= i <= 416 or i == 421:
            dut._log.info(f"skipping sequential logic at cell_pin {i}")
            continue
        cell = pin_mapping[i]
        if cell in cell_mapping:
            cell = cell_mapping[cell]
        await check_cell_pin(dut, i, pin_tests[cell])

