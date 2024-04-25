from machine import Pin
from utime import sleep_ms

input_pins = [14, 15, 16, 17, 18, 19, 20, 21]
output_pins = [9, 8, 7, 6, 22, 26, 27, 28]

inp = [Pin(i, Pin.OUT) for i in input_pins]
outp = [Pin(i, Pin.IN) for i in output_pins]

def set_inputs(page_mode, value):
    inp[1].value(page_mode)
    inp[2].value(value & 0x01)
    inp[3].value((value & 0x02) >> 1)
    inp[4].value((value & 0x04) >> 2)
    inp[5].value((value & 0x08) >> 3)
    inp[6].value((value & 0x10) >> 4)
    inp[7].value((value & 0x20) >> 5)
    inp[0].value(0)
    sleep_ms(50)
    inp[0].value(1)
    sleep_ms(50)

f = open('test.dat', 'r')
lastpage = None
for i in range(29480):
    testval = int(f.readline())
    page = (testval >> 11) & 0x3f
    outpin = (testval >> 8) & 0x07
    inputs = (testval >> 2) & 0x3f
    expected = testval & 0x03
    exp_txt = 'x' if expected == 2 else expected
    if page != lastpage:
        set_inputs(1, page)
        lastpage = page
    set_inputs(0, inputs)
    outputs = sum(outp[i].value() << i for i in range(8))
    result = outp[outpin].value()
    qc = 'pass' if (result == expected or expected == 2) else 'fail'
    log = f'testcase={i:05} page={page:06b} input={inputs:06b} output={outputs:08b} pin={outpin} result={result:01b} expected={exp_txt} [{qc}]'
    print(log)

f.close()
