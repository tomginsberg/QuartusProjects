

template = "when \"{}\" => return \"{}\";"


def binn(dec,n):
    bintemp = "{0:b}".format(dec)
    size = len(bintemp)
    pad = "0"*(n-size)
    return str(pad+bintemp)

def bcd(dec):
    s = str(dec)
    if len(s) is 1:
        s = "0"+s
    return binn(int(s[0]),4)+binn(int(s[1]),4)

for i in range(60):
    print(template.format(binn(i,6),bcd(i)))