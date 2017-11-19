from io import StringIO
import pyperclip

measures = """fis c' b' a es c fis,
g fis' c' b g d g,
a es' d' c a e a,"""

def format_measure(notes):
    return f"\\tuplet 3/2 4 {{ \\stemDown {notes[0]}8 ({notes[1]} {notes[2]} {notes[3]} {notes[4]} {notes[5]} }} \\stemNeutral {notes[6]}4)"


def read_measures(notes):
    with StringIO(notes) as stm:
        measure = stm.readline()
        while measure:
            yield measure.strip()
            measure = stm.readline()

def get_measures():
    for measure in read_measures(measures):
        notes = measure.split(' ')
        yield format_measure(notes)

s = ""
for m in get_measures():
    s += m + "\n" 

pyperclip.copy(s)
print(s)