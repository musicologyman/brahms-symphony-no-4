from io import StringIO
import pyperclip

notes = """a
e
c'
fis,
g
f"""


def format_chord(chord):
    return f"r4 <{chord}>8-! r r4"


def read_chords(notes):
    with StringIO(notes) as stm:
        chord = stm.readline()
        while chord:
            yield chord.strip()
            chord = stm.readline()

def get_chords():
    for chord in read_chords(notes):
        yield format_chord(chord)

s = ""
for c in get_chords():
    s += c + "\n" 

pyperclip.copy(s)
