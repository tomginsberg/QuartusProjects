
segs = [
["PIN_U21","PIN_V21","PIN_W22","PIN_W21","PIN_Y22","PIN_Y21","PIN_AA22"],
["PIN_AA20","PIN_AB20","PIN_AA19","PIN_AA18","PIN_AB18","PIN_AA17","PIN_U22"],
["PIN_Y19","PIN_AB17","PIN_AA10","PIN_Y14","PIN_V14","PIN_AB22","PIN_AB21"],
["PIN_Y16","PIN_W16","PIN_Y17","PIN_V16","PIN_U17","PIN_V18","PIN_V19"],
["PIN_U20","PIN_Y20","PIN_V20","PIN_U16","PIN_U15","PIN_Y15","PIN_P9"],
["PIN_N9","PIN_M8","PIN_T14","PIN_P14","PIN_C1","PIN_C2","PIN_W19"]
]



names = ["SEC0","SEC1","MIN0","MIN1","HOUR0","HOUR1"]

def ass_to(segnum, varname):
    template = "set_location_assignment {} -to {}[{}]"
    for i in range(7):
        print(template.format(segs[segnum][i],varname,6-i))

for i in range(6):
    ass_to(i,names[i])