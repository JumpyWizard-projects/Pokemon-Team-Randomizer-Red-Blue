print("This Programm is the Pokemon Team Randomizer for Pokemon Red or Blue visit jumpywizard.lima-city.de for more infos.")
if gameinfo.getromhash() ~= "EA9BCAE617FDF159B045185467AE58B2E4A48B9A" and gameinfo.getromhash() ~= "D7037C83E1AE5B39BDE3C30787637BA1D4C48CE2" then
	print("This is not a valid Rom make sure you use The US Version of Pokemon Red or Blue!")
else
	print("Your Rom seems Fine.")
end

local randomNumber = math.random
local read = memory.readbyte
local write = memory.writebyte
local Level = {}
local type1 = {}
local type2 = {}
local PP = {}
local CurPP = {}
local HPIV = {}
local AIV = {}
local DIV = {}
local SPEEDIV = {}
local SPECIALIV = {}
local CurHP = {}
local HP = {}
local A = {}
local D = {}
local SPEED = {}
local SPECIAL = {}
local SpecialBase = {}
local SpeedBase = {}
local DBase = {}
local ABase = {}
local HPBase = {}
HPBase[1] = 105
ABase[1] = 130
DBase[1] = 120
SpeedBase[1] = 40
SpecialBase[1] = 45
HPBase[2] = 105
ABase[2] = 95
DBase[2] = 80
SpeedBase[2] = 90
SpecialBase[2] = 40
HPBase[3] = 46
ABase[3] = 57
DBase[3] = 40
SpeedBase[3] = 50
SpecialBase[3] = 40
HPBase[4] = 70
ABase[4] = 45
DBase[4] = 48
SpeedBase[4] = 35
SpecialBase[4] = 60
HPBase[5] = 40
ABase[5] = 60
DBase[5] = 30
SpeedBase[5] = 70
SpecialBase[5] = 31
HPBase[6] = 40
ABase[6] = 30
DBase[6] = 50
SpeedBase[6] = 100
SpecialBase[6] = 55
HPBase[7] = 81
ABase[7] = 92
DBase[7] = 77
SpeedBase[7] = 85
SpecialBase[7] = 75
HPBase[8] = 95
ABase[8] = 75
DBase[8] = 110
SpeedBase[8] = 30
SpecialBase[8] = 80
HPBase[9] = 60
ABase[9] = 62
DBase[9] = 63
SpeedBase[9] = 60
SpecialBase[9] = 80
HPBase[10] = 95
ABase[10] = 95
DBase[10] = 85
SpeedBase[10] = 55
SpecialBase[10] = 125
HPBase[11] = 90
ABase[11] = 55
DBase[11] = 75
SpeedBase[11] = 30
SpecialBase[11] = 60
HPBase[12] = 60
ABase[12] = 40 
DBase[12] = 80 
SpeedBase[12] = 40
SpecialBase[12] = 60
HPBase[13] = 80
ABase[13] = 80
DBase[13] = 50
SpeedBase[13] = 25
SpecialBase[13] = 40
HPBase[14] = 60
ABase[14] = 65
DBase[14] = 60
SpeedBase[14] = 110
SpecialBase[14] = 130
HPBase[15] = 55
ABase[15] = 47
DBase[15] = 52
SpeedBase[15] = 41
SpecialBase[15] = 40
HPBase[16] = 90
ABase[16] = 82
DBase[16] = 87
SpeedBase[16] = 76
SpecialBase[16] = 75
HPBase[17] = 50
ABase[17] = 50
DBase[17] = 95
SpeedBase[17] = 35
SpecialBase[17] = 40
HPBase[18] = 80
ABase[18] = 85
DBase[18] = 95
SpeedBase[18] = 25
SpecialBase[18] = 30
HPBase[19] = 130
ABase[19] = 85
DBase[19] = 80
SpeedBase[19] = 60
SpecialBase[19] = 95
HPBase[20] = 90
ABase[20] = 110
DBase[20] = 80
SpeedBase[20] = 95
SpecialBase[20] = 80
HPBase[21] = 100
ABase[21] = 100
DBase[21] = 100
SpeedBase[21] = 100
SpecialBase[21] = 100
HPBase[22] = 95
ABase[22] = 125
DBase[22] = 79
SpeedBase[22] = 81
SpecialBase[22] = 100
HPBase[23] = 30
ABase[23] = 65
DBase[23] = 100
SpeedBase[23] = 40
SpecialBase[23] = 45
HPBase[24] = 40
ABase[24] = 40
DBase[24] = 35
SpeedBase[24] = 70
SpecialBase[24] = 100
HPBase[25] = 30
ABase[25] = 35
DBase[25] = 30
SpeedBase[25] = 80
SpecialBase[25] = 100
HPBase[26] = 70
ABase[26] = 110
DBase[26] = 80
SpeedBase[26] = 105
SpecialBase[26] = 55
HPBase[27] = 30 
ABase[27] = 45
DBase[27] = 55
SpeedBase[27] = 85
SpecialBase[27] = 70
HPBase[28] = 79
ABase[28] = 83
DBase[28] = 100
SpeedBase[28] = 78
SpecialBase[28] = 85
HPBase[29] = 65
ABase[29] = 125
DBase[29] = 100
SpeedBase[29] = 85
SpecialBase[29] = 55
HPBase[30] = 65
ABase[30] = 55
DBase[30] = 115
SpeedBase[30] = 60
SpecialBase[30] = 100
HPBase[33] = 55
ABase[33] = 70
DBase[33] = 45
SpeedBase[33] = 60
SpecialBase[33] = 50
HPBase[34] = 35
ABase[34] = 45
DBase[34] = 160
SpeedBase[34] = 70
SpecialBase[34] = 30
HPBase[35] = 65
ABase[35] = 90
DBase[35] = 65
SpeedBase[35] = 100
SpecialBase[35] = 61
HPBase[36] = 40
ABase[36] = 45
DBase[36] = 40
SpeedBase[36] = 56
SpecialBase[36] = 35
HPBase[37] = 90
ABase[37] = 65
DBase[37] = 65
SpeedBase[37] = 15
SpecialBase[37] = 40
HPBase[38] = 40
ABase[38] = 35
DBase[38] = 30
SpeedBase[38] = 105
SpecialBase[38] = 120
HPBase[39] = 55
ABase[39] = 95
DBase[39] = 115
SpeedBase[39] = 35
SpecialBase[39] = 45
HPBase[40] = 250
ABase[40] = 5
DBase[40] = 5
SpeedBase[40] = 50
SpecialBase[40] = 105
HPBase[41] = 80
ABase[41] = 100
DBase[41] = 70
SpeedBase[41] = 45
SpecialBase[41] = 50
HPBase[42] = 40
ABase[42] = 45
DBase[42] = 65
SpeedBase[42] = 90
SpecialBase[42] = 100
HPBase[43] = 50
ABase[43] = 120
DBase[43] = 53
SpeedBase[43] = 87
SpecialBase[43] = 35
HPBase[44] = 50
ABase[44] = 105
DBase[44] = 79
SpeedBase[44] = 76
SpecialBase[44] = 35
HPBase[45] = 60
ABase[45] = 85
DBase[45] = 69
SpeedBase[45] = 80
SpecialBase[45] = 65
HPBase[46] = 60
ABase[46] = 95
DBase[46] = 80
SpeedBase[46] = 30
SpecialBase[46] = 80
HPBase[47] = 50
ABase[47] = 52
DBase[47] = 48
SpeedBase[47] = 55
SpecialBase[47] = 50
HPBase[48] = 60
ABase[48] = 48
DBase[48] = 45
SpeedBase[48] = 42
SpecialBase[48] = 90
HPBase[49] = 80
ABase[49] = 110
DBase[49] = 130
SpeedBase[49] = 45
SpecialBase[49] = 55
HPBase[51] = 65
ABase[51] = 95
DBase[51] = 57
SpeedBase[51] = 93
SpecialBase[51] = 85
HPBase[53] = 65
ABase[53] = 83
DBase[53] = 57
SpeedBase[53] = 105
SpecialBase[53] = 85
HPBase[54] = 50
ABase[54] = 60
DBase[54] = 95
SpeedBase[54] = 70
SpecialBase[54] = 120
HPBase[55] = 40
ABase[55] = 65
DBase[55] = 95
SpeedBase[55] = 35
SpecialBase[55] = 65
HPBase[57] = 40
ABase[57] = 80
DBase[57] = 35
SpeedBase[57] = 70
SpecialBase[57] = 35
HPBase[58] = 65
ABase[58] = 45
DBase[58] = 55
SpeedBase[58] = 45
SpecialBase[58] = 70
HPBase[59] = 10
ABase[59] = 55
DBase[59] = 25
SpeedBase[59] = 95
SpecialBase[59] = 45
HPBase[60] = 75
ABase[60] = 100
DBase[60] = 95
SpeedBase[60] = 110
SpecialBase[60] = 70
HPBase[64] = 52
ABase[64] = 65
DBase[64] = 55
SpeedBase[64] = 60
SpecialBase[64] = 58
HPBase[65] = 60
ABase[65] = 55
DBase[65] = 50
SpeedBase[65] = 45
SpecialBase[65] = 40
HPBase[66] = 91
ABase[66] = 134
DBase[66] = 95
SpeedBase[66] = 80
SpecialBase[66] = 100
HPBase[70] = 35
ABase[70] = 85
DBase[70] = 45
SpeedBase[70] = 75
SpecialBase[70] = 35
HPBase[71] = 40
ABase[71] = 50
DBase[71] = 40
SpeedBase[71] = 90
SpecialBase[71] = 40
HPBase[72] = 65
ABase[72] = 50
DBase[72] = 35
SpeedBase[72] = 95
SpecialBase[72] = 95
HPBase[73] = 90
ABase[73] = 100
DBase[73] = 90
SpeedBase[73] = 90
SpecialBase[73] = 125
HPBase[74] = 90
ABase[74] = 85
DBase[74] = 100
SpeedBase[74] = 85
SpecialBase[74] = 125
HPBase[75] = 90
ABase[75] = 90
DBase[75] = 85
SpeedBase[75] = 100
SpecialBase[75] = 125
HPBase[76] = 48
ABase[76] = 48
DBase[76] = 48
SpeedBase[76] = 48
SpecialBase[76] = 48
HPBase[77] = 40
ABase[77] = 45
DBase[77] = 35
SpeedBase[77] = 90
SpecialBase[77] = 40
HPBase[78] = 30
ABase[78] = 105
DBase[78] = 90
SpeedBase[78] = 50
SpecialBase[78] = 25
HPBase[82] = 38
ABase[82] = 41
DBase[82] = 40
SpeedBase[82] = 65
SpecialBase[82] = 65
HPBase[83] = 73
ABase[83] = 76
DBase[83] = 75
SpeedBase[83] = 100
SpecialBase[83] = 100
HPBase[84] = 35
ABase[84] = 55
DBase[84] = 30
SpeedBase[84] = 90
SpecialBase[84] = 50
HPBase[85] = 60
ABase[85] = 90
DBase[85] = 55
SpeedBase[85] = 100
SpecialBase[85] = 90
HPBase[88] = 41
ABase[88] = 64
DBase[88] = 45
SpeedBase[88] = 50
SpecialBase[88] = 50
HPBase[89] = 61
ABase[89] = 84
DBase[89] = 65
SpeedBase[89] = 70
SpecialBase[89] = 70
HPBase[90] = 30
ABase[90] = 80
DBase[90] = 90
SpeedBase[90] = 55
SpecialBase[90] = 45
HPBase[91] = 60
ABase[91] = 115
DBase[91] = 105
SpeedBase[91] = 80
SpecialBase[91] = 70
HPBase[92] = 30
ABase[92] = 40
DBase[92] = 70
SpeedBase[92] = 60
SpecialBase[92] = 70
HPBase[93] = 55
ABase[93] = 65
DBase[93] = 95
SpeedBase[93] = 85
SpecialBase[93] = 95
HPBase[96] = 50
ABase[96] = 75
DBase[96] = 85
SpeedBase[96] = 40
SpecialBase[96] = 30
HPBase[97] = 75
ABase[97] = 100
DBase[97] = 110
SpeedBase[97] = 110
SpecialBase[97] = 65
HPBase[98] = 35
ABase[98] = 40
DBase[98] = 100
SpeedBase[98] = 35
SpecialBase[98] = 90
HPBase[99] = 70
ABase[99] = 60
DBase[99] = 125
SpeedBase[99] = 55
SpecialBase[99] = 115
HPBase[100] = 115
ABase[100] = 45
DBase[100] = 20
SpeedBase[100] = 20
SpecialBase[100] = 25
HPBase[101] = 140
ABase[101] = 70
DBase[101] = 45
SpeedBase[101] = 45
SpecialBase[101] = 50
HPBase[102] = 55
ABase[102] = 55
DBase[102] = 50
SpeedBase[102] = 55
SpecialBase[102] = 65
HPBase[103] = 65
ABase[103] = 130
DBase[103] = 60
SpeedBase[103] = 65
SpecialBase[103] = 110
HPBase[104] = 65
ABase[104] = 65
DBase[104] = 60
SpeedBase[104] = 130
SpecialBase[104] = 110
HPBase[105] = 130
ABase[105] = 65
DBase[105] = 60
SpeedBase[105] = 65
SpecialBase[105] = 110
HPBase[106] = 70
ABase[106] = 80
DBase[106] = 50
SpeedBase[106] = 35
SpecialBase[106] = 35
HPBase[107] = 40
ABase[107] = 45
DBase[107] = 35
SpeedBase[107] = 55
SpecialBase[107] = 40
HPBase[108] = 35
ABase[108] = 60
DBase[108] = 44
SpeedBase[108] = 55
SpecialBase[108] = 40
HPBase[109] = 35
ABase[109] = 70
DBase[109] = 55
SpeedBase[109] = 25
SpecialBase[109] = 55
HPBase[110] = 65
ABase[110] = 65
DBase[110] = 65
SpeedBase[110] = 90
SpecialBase[110] = 50
HPBase[111] = 90
ABase[111] = 85
DBase[111] = 95
SpeedBase[111] = 70
SpecialBase[111] = 70
HPBase[112] = 40
ABase[112] = 35
DBase[112] = 30
SpeedBase[112] = 50
SpecialBase[112] = 20
HPBase[113] = 45
ABase[113] = 25
DBase[113] = 50
SpeedBase[113] = 35
SpecialBase[113] = 25
HPBase[114] = 65
ABase[114] = 80
DBase[114] = 40
SpeedBase[114] = 75
SpecialBase[114] = 45
HPBase[116] = 60
ABase[116] = 110
DBase[116] = 70
SpeedBase[116] = 100
SpecialBase[116] = 60
HPBase[117] = 65
ABase[117] = 105
DBase[117] = 60
SpeedBase[117] = 95
SpecialBase[117] = 60
HPBase[118] = 35
ABase[118] = 80
DBase[118] = 35
SpeedBase[118] = 90
SpecialBase[118] = 40
HPBase[119] = 70
ABase[119] = 65
DBase[119] = 60
SpeedBase[119] = 90
SpecialBase[119] = 90
HPBase[120] = 90
ABase[120] = 70
DBase[120] = 80
SpeedBase[120] = 70
SpecialBase[120] = 95
HPBase[123] = 45
ABase[123] = 30
DBase[123] = 35
SpeedBase[123] = 45
SpecialBase[123] = 20
HPBase[124] = 50
ABase[124] = 20
DBase[124] = 55
SpeedBase[124] = 30
SpecialBase[124] = 25
HPBase[125] = 60
ABase[125] = 45
DBase[125] = 50
SpeedBase[125] = 70
SpecialBase[125] = 80
HPBase[126] = 90
ABase[126] = 130
DBase[126] = 80
SpeedBase[126] = 55
SpecialBase[126] = 65
HPBase[128] = 80
ABase[128] = 82
DBase[128] = 78
SpeedBase[128] = 85
SpecialBase[128] = 80
HPBase[129] = 85
ABase[129] = 73
DBase[129] = 70
SpeedBase[129] = 67
SpecialBase[129] = 115
HPBase[131] = 106
ABase[131] = 110
DBase[131] = 90
SpeedBase[131] = 130
SpecialBase[131] = 154
HPBase[132] = 160
ABase[132] = 110
DBase[132] = 65
SpeedBase[132] = 30
SpecialBase[132] = 65
HPBase[133] = 20
ABase[133] = 10
DBase[133] = 55
SpeedBase[133] = 80
SpecialBase[133] = 20
HPBase[136] = 105
ABase[136] = 105
DBase[136] = 75
SpeedBase[136] = 50
SpecialBase[136] = 65
HPBase[138] = 55
ABase[138] = 130
DBase[138] = 115
SpeedBase[138] = 75
SpecialBase[138] = 50
HPBase[139] = 50
ABase[139] = 95
DBase[139] = 180
SpeedBase[139] = 70
SpecialBase[139] = 85
HPBase[141] = 60
ABase[141] = 50
DBase[141] = 70
SpeedBase[141] = 140
SpecialBase[141] = 80
HPBase[142] = 95
ABase[142] = 70
DBase[142] = 73
SpeedBase[142] = 60
SpecialBase[142] = 85
HPBase[143] = 65
ABase[143] = 90
DBase[143] = 120
SpeedBase[143] = 60
SpecialBase[143] = 85
HPBase[144] = 65
ABase[144] = 70
DBase[144] = 60
SpeedBase[144] = 115
SpecialBase[144] = 65
HPBase[145] = 60
ABase[145] = 80
DBase[145] = 110
SpeedBase[145] = 45
SpecialBase[145] = 50
HPBase[147] = 45
ABase[147] = 50
DBase[147] = 45
SpeedBase[147] = 95
SpecialBase[147] = 115
HPBase[130] = 75
ABase[130] = 80
DBase[130] = 70
SpeedBase[130] = 90
SpecialBase[130] = 75
HPBase[148] = 25
ABase[148] = 20
DBase[148] = 15
SpeedBase[148] = 90
SpecialBase[148] = 105
HPBase[149] = 55
ABase[149] = 50
DBase[149] = 45
SpeedBase[149] = 120
SpecialBase[149] = 135
HPBase[150] = 63
ABase[150] = 60
DBase[150] = 55
SpeedBase[150] = 71
SpecialBase[150] = 50
HPBase[151] = 83
ABase[151] = 80
DBase[151] = 75
SpeedBase[151] = 91
SpecialBase[151] = 70
HPBase[152] = 60
ABase[152] = 75
DBase[152] = 85
SpeedBase[152] = 115
SpecialBase[152] = 100
HPBase[153] = 45
ABase[153] = 49
DBase[153] = 49
SpeedBase[153] = 45
SpecialBase[153] = 65
HPBase[154] = 80
ABase[154] = 82
DBase[154] = 83
SpeedBase[154] = 80
SpecialBase[154] = 100
HPBase[155] = 80
ABase[155] = 70
DBase[155] = 65
SpeedBase[155] = 100
SpecialBase[155] = 120
HPBase[157] = 45
ABase[157] = 67
DBase[157] = 60
SpeedBase[157] = 63
SpecialBase[157] = 50
HPBase[158] = 80
ABase[158] = 92
DBase[158] = 65
SpeedBase[158] = 68
SpecialBase[158] = 80
HPBase[163] = 50
ABase[163] = 85
DBase[163] = 55
SpeedBase[163] = 90
SpecialBase[163] = 65
HPBase[164] = 65
ABase[164] = 100
DBase[164] = 70
SpeedBase[164] = 105
SpecialBase[164] = 90
HPBase[165] = 30
ABase[165] = 56
DBase[165] = 35
SpeedBase[165] = 72
SpecialBase[165] = 25
HPBase[166] = 55
ABase[166] = 81
DBase[166] = 60
SpeedBase[166] = 97
SpecialBase[166] = 50
HPBase[167] = 61
ABase[167] = 72
DBase[167] = 57
SpeedBase[167] = 65
SpecialBase[167] = 55
HPBase[168] = 70
ABase[168] = 62
DBase[168] = 67
SpeedBase[168] = 56
SpecialBase[168] = 55
HPBase[169] = 40
ABase[169] = 80
DBase[169] = 100
SpeedBase[169] = 20
SpecialBase[169] = 30
HPBase[170] = 65
ABase[170] = 60
DBase[170] = 70
SpeedBase[170] = 40
SpecialBase[170] = 75
HPBase[171] = 80
ABase[171] = 105
DBase[171] = 65
SpeedBase[171] = 130
SpecialBase[171] = 60
HPBase[173] = 25
ABase[173] = 35
DBase[173] = 70
SpeedBase[173] = 45
SpecialBase[173] = 95
HPBase[176] = 39
ABase[176] = 52
DBase[176] = 43
SpeedBase[176] = 65
SpecialBase[176] = 50
HPBase[177] = 44
ABase[177] = 48
DBase[177] = 65
SpeedBase[177] = 43
SpecialBase[177] = 50
HPBase[178] = 58
ABase[178] = 64
DBase[178] = 58
SpeedBase[178] = 80
SpecialBase[178] = 65
HPBase[179] = 59
ABase[179] = 63
DBase[179] = 80
SpeedBase[179] = 58
SpecialBase[179] = 65
HPBase[180] = 78
ABase[180] = 84
DBase[180] = 78
SpeedBase[180] = 100
SpecialBase[180] = 85
HPBase[185] = 45
ABase[185] = 50
DBase[185] = 55
SpeedBase[185] = 30
SpecialBase[185] = 75
HPBase[186] = 60
ABase[186] = 65
DBase[186] = 70
SpeedBase[186] = 40
SpecialBase[186] = 85
HPBase[187] = 75
ABase[187] = 80
DBase[187] = 85
SpeedBase[187] = 50
SpecialBase[187] = 100
HPBase[188] = 50
ABase[188] = 75
DBase[188] = 35
SpeedBase[188] = 40
SpecialBase[188] = 70
HPBase[189] = 65
ABase[189] = 90
DBase[189] = 50
SpeedBase[189] = 55
SpecialBase[189] = 85
HPBase[190] = 80
ABase[190] = 105
DBase[190] = 65
SpeedBase[190] = 70
SpecialBase[190] = 100
PP[1] = 35
PP[2] = 25
PP[3] = 10
PP[4] = 15
PP[5] = 20
PP[6] = 20
PP[7] = 15
PP[8] = 15
PP[9] = 15
PP[10] = 35
PP[11] = 30
PP[12] = 5
PP[13] = 10
PP[14] = 20
PP[15] = 30
PP[16] = 35
PP[17] = 35
PP[18] = 20
PP[19] = 15
PP[20] = 20
PP[21] = 20
PP[22] = 25
PP[23] = 20
PP[24] = 30
PP[25] = 5
PP[26] = 10
PP[27] = 15
PP[28] = 15
PP[29] = 15
PP[30] = 25
PP[31] = 20
PP[32] = 5
PP[33] = 35
PP[34] = 15
PP[35] = 20
PP[36] = 20
PP[37] = 10
PP[38] = 15
PP[39] = 30
PP[40] = 35
PP[41] = 20
PP[42] = 20
PP[43] = 30
PP[44] = 25
PP[45] = 40
PP[46] = 20
PP[47] = 15
PP[48] = 20
PP[49] = 20
PP[50] = 20
PP[51] = 30
PP[52] = 25
PP[53] = 15
PP[54] = 30
PP[55] = 25
PP[56] = 5
PP[57] = 15
PP[58] = 10
PP[59] = 5
PP[60] = 20
PP[61] = 20
PP[62] = 20
PP[63] = 5
PP[64] = 35
PP[65] = 20
PP[66] = 20
PP[67] = 20
PP[68] = 20
PP[69] = 20
PP[70] = 15
PP[71] = 25
PP[72] = 15
PP[73] = 10
PP[74] = 20
PP[75] = 25
PP[76] = 10
PP[77] = 35
PP[78] = 30
PP[79] = 15
PP[80] = 10
PP[81] = 40
PP[82] = 10
PP[83] = 15
PP[84] = 30
PP[85] = 15
PP[86] = 20
PP[87] = 10
PP[88] = 15
PP[89] = 10
PP[90] = 5
PP[91] = 10
PP[92] = 10
PP[93] = 25
PP[94] = 10
PP[95] = 20
PP[96] = 40
PP[97] = 30
PP[98] = 30
PP[99] = 20
PP[100] = 20
PP[101] = 15
PP[102] = 10
PP[103] = 40
PP[104] = 15
PP[105] = 10
PP[106] = 30
PP[107] = 10
PP[108] = 20
PP[109] = 10
PP[110] = 40
PP[111] = 40
PP[112] = 20
PP[113] = 30
PP[114] = 30
PP[115] = 20
PP[116] = 30
PP[117] = 10
PP[118] = 10
PP[119] = 20
PP[120] = 5
PP[121] = 10
PP[122] = 30
PP[123] = 20
PP[124] = 20
PP[125] = 20
PP[126] = 5
PP[127] = 15
PP[128] = 15
PP[129] = 20
PP[130] = 10
PP[131] = 15
PP[132] = 35
PP[133] = 20
PP[134] = 15
PP[135] = 10
PP[136] = 10
PP[137] = 30
PP[138] = 15
PP[139] = 40
PP[140] = 20
PP[141] = 10
PP[142] = 10
PP[143] = 5
PP[144] = 10
PP[145] = 30
PP[146] = 10
PP[147] = 15
PP[148] = 20
PP[149] = 15
PP[150] = 40
PP[151] = 20
PP[152] = 10
PP[153] = 5
PP[154] = 15
PP[155] = 10
PP[156] = 10
PP[157] = 10
PP[158] = 15
PP[159] = 30
PP[160] = 30
PP[161] = 10
PP[162] = 10
PP[163] = 20
PP[164] = 10
type1[1] = 4
type2[1] = 5
type1[2] = 0
type2[2] = 0
type1[3] = 4
type2[3] = 4
type1[4] = 0
type2[4] = 0
type1[5] = 0
type2[5] = 2
type1[6] = 23
type2[6] = 23
type1[7] = 3
type2[7] = 4
type1[8] = 21
type2[8] = 24
type1[9] = 22
type2[9] = 3
type1[10] = 22
type2[10] = 24
type1[11] = 0
type2[11] = 0
type1[12] = 22
type2[12] = 24
type1[13] = 3
type2[13] = 3
type1[14] = 8
type2[14] = 3
type1[15] = 3
type2[15] = 3
type1[16] = 3
type2[16] = 4
type1[17] = 4
type2[17] = 4
type1[18] = 4
type2[18] = 5
type1[19] = 21
type2[19] = 25
type1[20] = 20
type2[20] = 20
type1[21] = 24
type2[21] = 24
type1[22] = 21
type2[22] = 2
type1[23] = 21
type2[23] = 21
type1[24] = 21
type2[24] = 3
type1[25] = 8
type2[25] = 3
type1[26] = 7
type2[26] = 2
type1[27] = 21
type2[27] = 21
type1[28] = 21
type2[28] = 21
type1[29] = 7
type2[29] = 7
type1[30] = 22
type2[30] = 22
type1[33] = 20
type2[33] = 20
type1[34] = 5
type2[34] = 4
type1[35] = 0
type2[35] = 2
type1[36] = 0
type2[36] = 2
type1[37] = 21
type2[37] = 24
type1[38] = 24
type2[38] = 24
type1[39] = 4
type2[39] = 5
type1[40] = 0
type2[40] = 0
type1[41] = 1
type2[41] = 1
type1[42] = 24
type2[42] = 24
type1[43] = 1
type2[43] = 1
type1[44] = 1
type2[44] = 1
type1[45] = 3
type2[45] = 3
type1[46] = 7
type2[46] = 22
type1[47] = 21
type2[47] = 21
type1[48] = 24
type2[48] = 24
type1[49] = 5
type2[49] = 4
type1[51] = 20
type2[51] = 20
type1[53] = 23
type2[53] = 23
type1[54] = 23
type2[54] = 23
type1[55] = 3
type2[55] = 3
type1[57] = 1
type2[57] = 1
type1[58] = 21
type2[58] = 21
type1[59] = 4
type2[59] = 4
type1[60] = 0
type2[60] = 0
type1[64] = 0
type2[64] = 2
type1[65] = 7
type2[65] = 3
type1[66] = 26
type2[66] = 2
type1[70] = 0
type2[70] = 2
type1[71] = 21
type2[71] = 21
type1[72] = 25
type2[72] = 24
type1[73] = 20
type2[73] = 2
type1[74] = 25
type2[74] = 2
type1[75] = 23
type2[75] = 2
type1[76] = 0
type2[76] = 0
type1[77] = 0
type2[77] = 0
type1[78] = 21
type2[78] = 21
type1[82] = 20
type2[82] = 20
type1[83] = 20
type2[83] = 20
type1[84] = 23
type2[84] = 23
type1[85] = 23
type2[85] = 23
type1[88] = 26
type2[88] = 26
type1[89] = 26
type2[89] = 26
type1[90] = 5
type2[90] = 21
type1[91] = 5
type2[91] = 21
type1[92] = 21
type2[92] = 21
type1[93] = 21
type2[93] = 21
type1[96] = 4
type2[96] = 4
type1[97] = 4
type2[97] = 4
type1[98] = 5
type2[98] = 21
type1[99] = 5
type2[99] = 21
type1[100] = 0
type2[100] = 0
type1[101] = 0
type2[101] = 0
type1[102] = 0
type2[102] = 0
type1[103] = 20
type2[103] = 20
type1[104] = 23
type2[204] = 23
type1[105] = 21
type2[105] = 21
type1[106] = 1
type2[106] = 1
type1[107] = 3
type2[107] = 2
type1[108] = 3
type2[108] = 3
type1[109] = 7
type2[109] = 22
type1[110] = 21
type2[110] = 21
type1[111] = 21
type2[111] = 1
type1[112] = 7
type2[112] = 3
type1[113] = 7
type2[113] = 3
type1[114] = 7
type2[114] = 3
type1[116] = 0
type2[116] = 2
type1[117] = 1
type2[117] = 1
type1[118] = 4
type2[118] = 4
type1[119] = 7
type2[119] = 3
type1[120] = 21
type2[120] = 25
type1[123] = 7
type2[123] = 7
type1[124] = 7
type2[124] = 7
type1[125] = 7
type2[125] = 2
type1[126] = 1
type2[126] = 1
type1[128] = 21
type2[128] = 21
type1[129] = 24
type2[129] = 24
type1[130] = 3
type2[130] = 2
type1[131] = 24
type2[131] = 24
type1[132] = 0
type2[132] = 0
type1[133] = 21
type2[133] = 21
type1[136] = 3
type2[136] = 3
type1[138] = 21
type2[138] = 21
type1[139] = 21
type2[139] = 25
type1[141] = 23
type2[141] = 23
type1[142] = 0
type2[142] = 0
type1[143] = 3
type2[143] = 3
type1[144] = 0
type2[144] = 0
type1[145] = 4
type2[145] = 4
type1[147] = 8
type2[147] = 3
type1[148] = 24
type2[148] = 24
type1[149] = 24
type2[149] = 24
type1[150] = 0
type2[150] = 2
type1[151] = 0
type2[151] = 2
type1[152] = 21
type2[152] = 24
type1[153] = 22
type2[153] = 3
type1[154] = 22
type2[154] = 3
type1[155] = 21
type2[155] = 3
type1[157] = 21
type2[157] = 21
type1[158] = 21
type2[158] = 21
type1[163] = 20
type2[163] = 20
type1[164] = 20
type2[164] = 20
type1[165] = 0
type2[165] = 0
type1[166] = 0
type2[166] = 0
type1[167] = 3
type2[167] = 3
type1[168] = 3
type2[168] = 3
type1[169] = 5
type2[169] = 4
type1[170] = 0
type2[170] = 0
type1[171] = 5
type2[171] = 2
type1[173] = 23
type2[173] = 23
type1[176] = 20
type2[176] = 20
type1[177] = 21
type2[177] = 21
type1[178] = 20
type2[178] = 20
type1[179] = 21
type2[179] = 21
type1[180] = 20
type2[180] = 2
type1[185] = 22
type2[185] = 3
type1[186] = 22
type2[186] = 3
type1[187] = 22
type2[187] = 3
type1[188] = 22
type2[188] = 3
type1[189] = 22
type2[189] = 3
type1[190] = 22
type2[190] = 3
local Pokemon = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,51,53,54,55,57,58,59,60,64,65,66,70,71,72,73,74,75,76,77,78,82,83,84,85,88,89,90,91,92,93,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,116,117,118,119,120,123,124,125,126,128,129,130,131,132,133,136,138,139,141,142,143,144,145,147,148,149,150,151,152,153,154,155,157,158,163,164,165,166,167,168,169,170,171,173,176,177,178,179,180,185,186,187,188,189,190}
local Randomize = false



local function CheckCurHP()
	if CurHP[i] > 1 then
		CurHP[i] = 1
	end
end



local function Puffer()
	for _ = 1,10 do
		emu.frameadvance()
	end
end



local function BattleHPWrite()
	local ADIV = read(0xD020)
	local SSIV = read(0xD021)
	if ADIV == read(0xD186) and SSIV == read(0xD187) then 
		write(0xD015,read(0xD16C))
		write(0xD016,read(0xD16D))
	elseif ADIV == read(0xD1B2) and SSIV == read(0xD1B3) then
		write(0xD015,read(0xD198))
		write(0xD016,read(0xD199))
	elseif ADIV == read(0xD1DE) and SSIV == read(0xD1DF) then
		write(0xD015,read(0xD1C4))
		write(0xD016,read(0xD1C5))
	elseif ADIV == read(0xD20A) and SSIV == read(0xD20B) then
		write(0xD015,read(0xD1F0))
		write(0xD016,read(0xD1F1))
	elseif ADIV == read(0xD236) and SSIV == read(0xD237) then
		write(0xD015,read(0xD21C))
		write(0xD016,read(0xD21D))
	elseif ADIV == read(0xD262) and SSIV == read(0xD263) then
		write(0xD015,read(0xD248))
		write(0xD016,read(0xD249))
	end
end



local function IVcalc(ADIV,SSIV)
	local IV = read(ADIV)
	HPIV[i] = 0
	AIV[i] = 0
	DIV[i] = 0
	SPEEDIV[i] = 0
	SPECIALIV[i] = 0
	if IV > 127 then
		AIV[i] = 8
		IV = IV - 128
	end
	if IV > 63 then
		AIV[i] = AIV[i] + 4
		IV = IV - 64
	end
	if IV > 31 then
		AIV[i] = AIV[i] + 2
		IV = IV - 32
	end
	if IV > 15 then
		AIV[i] = AIV[i] + 1
		IV = IV - 16
		HPIV[1] = 8
	end
	if IV > 7 then
		DIV[i] = 8
		IV = IV - 8
	end
	if IV > 3 then
		DIV[i] = DIV[i] + 4
		IV = IV - 4
	end
	if IV > 1 then
		DIV[i] = DIV[i] + 2
		IV = IV - 4
	end
	if IV == 1 then
		DIV[i] = DIV[i] + 1
		HPIV[i] = HPIV[i] + 4
	end
	IV = read(SSIV)
	if IV > 127 then
		SPEEDIV[i] = 8
		IV = IV - 128
	end
	if IV > 63 then
		SPEEDIV[i] = SPEEDIV[i] + 4
		IV = IV - 64
	end
	if IV > 31 then
		SPEEDIV[i] = SPEEDIV[i] + 2
		IV = IV - 32
	end
	if IV > 15 then
		SPEEDIV[i] = SPEEDIV[i] + 1
		IV = IV - 16
		HPIV[i] = HPIV[i] + 2
	end
	if IV > 7 then
		SPECIALIV[i] = 8
		IV = IV - 8
	end
	if IV > 3 then
		SPECIALIV[i] = SPECIALIV[i] + 4
		IV = IV - 4
	end
	if IV > 1 then
		SPECIALIV[i] = SPECIALIV[i] + 2
		IV = IV - 4
	end
	if IV == 1 then
		SPECIALIV[i] = SPECIALIV[i] + 1
		HPIV[i] = HPIV[i] + 1
	end
end


local function Randommove(MoveAddress,CurPPAddress)
  
  local Move = read(MoveAddress)
  
  
  if Move == 0 then
    Move = randomNumber(1,164)
    write(MoveAddress, Move)
    write(CurPPAddress, PP[Move])
  else
    local CurPP = read(CurPPAddress) / PP[Move]
    Move = randomNumber(1,164)
    write(MoveAddress, Move)
    write(CurPPAddress, CurPP * PP[Move])
  end
  
end

local function Randommoves(Move1Address,Move2Address,Move3Address,Move4Address,CurPP1Address,CurPP2Address,CurPP3Address,CurPP4Address)
  Randommove(Move1Address,CurPP1Address)
  Randommove(Move2Address,CurPP2Address)
  Randommove(Move3Address,CurPP3Address)
  Randommove(Move4Address,CurPP4Address)
end




local function Write(StatHP,StatHP255,StatCurHP,StatCurHP255,StatA,StatA255,StatD,StatD255,StatSPEED,StatSPEED255,StatSPECIAL,StatSPECIAL255)
	if HP[i] > 255 then
		write(StatHP255,math.floor(HP[i] / 255))
		write(StatHP,math.ceil(HP[i] - read(StatHP255) * 255))
		write(StatCurHP255,math.floor(HP[i] * CurHP[i] / 255))
		write(StatCurHP,math.ceil(HP[i] * CurHP[i] - read(StatCurHP255) * 255))
	else
		write(StatHP,math.ceil(HP[i]))
		write(StatCurHP,math.ceil(HP[i]*CurHP[i]))
	end
	if A[i] > 255 then
		write(StatA255,math.floor(A[i] / 255))
		write(StatA,A[i] - read(StatA255) * 255)
	else 
		write(StatA,A[i])
	end
	if D[i] > 255 then
		write(StatD255,math.floor(D[i] / 255))
		write(StatD,D[i] - read(StatD255) * 255)
	else
		write(StatD,D[i])
	end
	if SPEED[i] > 255 then
		write(StatSPEED255,math.floor(SPEED[i] / 255))
		write(StatSPEED,SPEED[i] - read(StatSPEED255) * 255)
	else 
		write(StatSPEED,SPEED[i])
	end
	if SPECIAL[i] > 255 then
		write(StatSPECIAL255,math.floor(SPECIAL[i] / 255))
		write(StatSPECIAL,SPECIAL[i] - read(StatSPECIAL255) * 255)
	else
		write(StatSPECIAL,SPECIAL[i])
	end
end



local function Random(StatRandomPokemon,Stattype1,Stattype2)
	write(StatRandomPokemon,Pokemon[math.random(#Pokemon)])
	write(Stattype1,type1[read(StatRandomPokemon)])
	write(Stattype2,type2[read(StatRandomPokemon)])
end



local function Statcalc(StatRandomPokemon,StatHPEV,StatHPEV255,StatAEV,StatAEV255,StatDEV,StatDEV255,StatSPECIALEV,StatSPECIALEV255,StatSPEEDEV,StatSPEEDEV255,StatLevel)
	HP[i] = ((HPBase[read(StatRandomPokemon)] + HPIV[i]) * 2 + (math.sqrt(read(StatHPEV) + read(StatHPEV255) * 255))/ 4) * read(StatLevel) / 100 + read(StatLevel) + 10
	A[i] = ((ABase[read(StatRandomPokemon)] + AIV[i]) * 2 + (math.sqrt(read(StatAEV) + read(StatAEV255)* 255))/ 4) * read(StatLevel) / 100 + 5
	D[i] = ((DBase[read(StatRandomPokemon)] + DIV[i]) * 2 + (math.sqrt(read(StatDEV) + read(StatDEV255)* 255))/ 4) * read(StatLevel) / 100 + 5
	SPEED[i] = ((SpeedBase[read(StatRandomPokemon)] + SPEEDIV[i])* 2 + (math.sqrt(read(StatSPEEDEV) + read(StatSPEEDEV255) * 255))/ 4)*read(StatLevel) / 100 + 5
	SPECIAL[i] = ((SpecialBase[read(StatRandomPokemon)] + SPECIALIV[i]) * 2 + (math.sqrt(read(StatSPECIALEV) + read(StatSPECIALEV255)* 255))/ 4) * read(StatLevel) / 100 + 5
end



math.randomseed(os.time())



while true do
	if read(0xD057) == 0 then
		Randomize = true
	elseif Randomize == true and read(0xD057) > 0 then
		print("Your Pokemon have been Randomized")
		Randomize = false
		if read(0xD164) > 0 and read(0xD164) < 255 then
			i = 1
			CurHP[i] = (read(0xD16D) + read(0xD16C) * 255) / (read(0xD18E) + read(0xD18D) * 255)
			CheckCurHP()
			IVcalc(0xD186,0xD187)
			Random(0xD164,0xD170,0xD171)
			Statcalc(0xD164,0xD17D,0xD17C,0xD17F,0xD17E,0xD181,0xD182,0xD196,0xD195,0xD194,0xD193,0xD18C)
			Write(0xD18E,0xD18D,0xD16D,0xD16C,0xD190,0xD18F,0xD192,0xD191,0xD194,0xD193,0xD196,0xD195)
			Randommoves(0xD173,0xD174,0xD175,0xD176,0xD188,0xD189,0xD18A,0xD18B, i)
		end
		if read(0xD165) > 0 and read(0xD165) < 255 then
			i = 2
			CurHP[i] = (read(0xD199) + read(0xD198) * 255) / (read(0xD1BA) + read(0xD1B9) * 255)
			CheckCurHP()
			Random(0xD165,0xD19C,0xD19D)
			IVcalc(0xD1B2,0xD1B3)
			Statcalc(0xD165,0xD1A9,0xD1A8,0xD1AB,0xD1AA,0xD1AD,0xD1AC,0xD1C2,0xD1C1,0xD1C0,0xD1BF,0xD1B8)
			Write(0xD1BA,0xD1B9,0xD199,0xD198,0xD1BC,0xD1BB,0xD1BE,0xD1BD,0xD1C0,0xD1BF,0xD1C2,0xD1C1)
			Randommoves(0xD19F,0xD1A0,0xD1A1,0xD1A2,0xD1B4,0xD1B5,0xD1B6,0xD1B7,i)
		end
		if read(0xD166) > 0 and read(0xD166) < 255 then
			i = 3
			CurHP[i] = (read(0xD1C5) + read(0xD1C4) * 255) / (read(0xD1E6) + read(0xD1E5) * 255)
			CheckCurHP()
			Random(0xD166,0xD1C8,0xD1C9)
			IVcalc(0xD1DE,0xD1DF)
			Statcalc(0xD166,0xD1D5,0xD1D4,0xD1D7,0xD1D6,0xD1D9,0xD1D8,0xD1EE,0xD1ED,0xD1EC,0xD1EB,0xD1E4)
			Write(0xD1E6,0xD1E5,0xD1C5,0xD1C4,0xD1E8,0xD1E7,0xD1EA,0xD1E9,0xD1EC,0xD1EB,0xD1EE,0xD1ED)
			Randommoves(0xD1CB,0xD1CC,0xD1CD,0xD1CE,0xD1E0,0xD1E1,0xD1E2,0xD1E3)
		end
		if read(0xD167) > 0 and read(0xD167) < 255 then
			i = 4
			CurHP[i] = (read(0xD1F1) + read(0xD1F0) * 255) / (read(0xD212) + read(0xD211) * 255)
			CheckCurHP()
			Random(0xD167,0xD1F4,0xD1F5)
			IVcalc(0xD20A,0xD20B)
			Statcalc(0xD167,0xD201,0xD200,0xD203,0xD202,0xD205,0xD204,0xD21A,0xD219,0xD218,0xD217,0xD210)
			Write(0xD212,0xD211,0xD1F1,0xD1F0,0xD214,0xD213,0xD216,0xD215,0xD218,0xD217,0xD21A,0xD219)
			Randommoves(0xD1F7,0xD1F8,0xD1F9,0xD1FA,0xD20C,0xD20D,0xD20E,0xD20F)
		end
		if read(0xD168) > 0 and read(0xD168) < 255 then
			i = 5
			CurHP[i] = (read(0xD21D) + read(0xD21C) * 255) / (read(0xD23E) + read(0xD23D) * 255)
			CheckCurHP()
			Random(0xD168,0xD220,0xD221)
			IVcalc(0xD236,0xD237)
			Statcalc(0xD168,0xD22D,0xD22C,0xD22F,0xD22E,0xD231,0xD230,0xD246,0xD245,0xD244,0xD243,0xD23C)
			Write(0xD23E,0xD23D,0xD21D,0xD21C,0xD240,0xD23F,0xD242,0xD241,0xD244,0xD243,0xD246,0xD245)
			Randommoves(0xD223,0xD224,0xD225,0xD226,0xD238,0xD239,0xD23A,0xD23B)
		end
		if read(0xD169) > 0 and read(0xD169) < 255 then
			i = 6
			CurHP[i] = (read(0xD249) + read(0xD248) * 255) / (read(0xD26A) + read(0xD269) * 255)
			CheckCurHP()
			Random(0xD169,0xD24C,0xD24D)
			IVcalc(0xD262,0xD263)
			Statcalc(0xD169,0xD259,0xD258,0xD25B,0xD25A,0xD25D,0xD25C,0xD272,0xD271,0xD270,0xD26F,0xD268)
			Write(0xD26A,0xD269,0xD249,0xD248,0xD26C,0xD26B,0xD26E,0xD26D,0xD270,0xD26F,0xD272,0xD271)
			Randommoves(0xD24F,0xD250,0xD251,0xD252,0xD264,0xD265,0xD266,0xD267)
		end
	end
	
	
	
		if Level[1] ~= nil then
			if Level[1] ~= read(0xD18C) then
				Level[1] = read(0xD18C)
				Puffer()
				i = 1
				CurHP[i] = (read(0xD16D) + read(0xD16C) * 255) / (read(0xD18E) + read(0xD18D) * 255)
				CheckCurHP()
				IVcalc(0xD186,0xD187)
				Statcalc(0xD164,0xD17D,0xD17C,0xD17F,0xD17E,0xD181,0xD182,0xD196,0xD195,0xD194,0xD193,0xD18C)
				Write(0xD18E,0xD18D,0xD16D,0xD16C,0xD190,0xD18F,0xD192,0xD191,0xD194,0xD193,0xD196,0xD195)
				BattleHPWrite()
			end
		end
		if Level[2] ~= nil then
			if Level[2] ~= read(0xD1B8) then
				Level[2] = read(0xD1B8)
				Puffer()
				i = 2
				CurHP[i] = (read(0xD199) + read(0xD198) * 255) / (read(0xD1BA) + read(0xD1B9) * 255)
				CheckCurHP()
				IVcalc(0xD1B2,0xD1B3)
				Statcalc(0xD165,0xD1A9,0xD1A8,0xD1AB,0xD1AA,0xD1AD,0xD1AC,0xD1C2,0xD1C1,0xD1C0,0xD1BF,0xD1B8)
				Write(0xD1BA,0xD1B9,0xD199,0xD198,0xD1BC,0xD1BB,0xD1BE,0xD1BD,0xD1C0,0xD1BF,0xD1C2,0xD1C1)
				BattleHPWrite()
			end
		end
		if Level[3] ~= nil then
			if Level[3] ~= read(0xD1E4) then
				Level[3] = read(0xD1E4)
				Puffer()
				i = 3
				CurHP[i] = (read(0xD1C5) + read(0xD1C4) * 255) / (read(0xD1E6) + read(0xD1E5) * 255)
				CheckCurHP()
				IVcalc(0xD1DE,0xD1DF)
				Statcalc(0xD166,0xD1D5,0xD1D4,0xD1D7,0xD1D6,0xD1D9,0xD1D8,0xD1EE,0xD1ED,0xD1EC,0xD1EB,0xD1E4)
				Write(0xD1E6,0xD1E5,0xD1C5,0xD1C4,0xD1E8,0xD1E7,0xD1EA,0xD1E9,0xD1EC,0xD1EB,0xD1EE,0xD1ED)
				BattleHPWrite()
			end
		end
		if Level[4] ~= nil then
			if Level[4] ~= read(0xD210) then
				Level[4] = read(0xD210)
				Puffer()
				i = 4
				CurHP[i] = (read(0xD1F1) + read(0xD1F0) * 255) / (read(0xD212) + read(0xD211) * 255)
				CheckCurHP()
				IVcalc(0xD20A,0xD20B)
				Statcalc(0xD167,0xD201,0xD200,0xD203,0xD202,0xD205,0xD204,0xD21A,0xD219,0xD218,0xD217,0xD210)
				Write(0xD212,0xD211,0xD1F1,0xD1F0,0xD214,0xD213,0xD216,0xD215,0xD218,0xD217,0xD21A,0xD219)
				BattleHPWrite()
			end
		end
		if Level[5] ~= nil then
			if Level[5] ~= read(0xD23C) then
				Level[5] = read(0xD23C)
				Puffer()
				i = 5
				CurHP[i] = (read(0xD21D) + read(0xD21C) * 255) / (read(0xD23E) + read(0xD23D) * 255)
				CheckCurHP()
				IVcalc(0xD236,0xD237)
				Statcalc(0xD168,0xD22D,0xD22C,0xD22F,0xD22E,0xD231,0xD230,0xD246,0xD245,0xD244,0xD243,0xD23C)
				Write(0xD23E,0xD23D,0xD21D,0xD21C,0xD240,0xD23F,0xD242,0xD241,0xD244,0xD243,0xD246,0xD245)
				BattleHPWrite()
			end
		end
		if Level[6] ~= nil then
			if Level[6] ~= read(0xD268) then
				Level[6] = read(0xD268)
				Puffer()
				i = 6
				CurHP[i] = (read(0xD249) + read(0xD248) * 255) / (read(0xD26A) + read(0xD269) * 255)
				CheckCurHP()
				IVcalc(0xD262,0xD263)
				Statcalc(0xD169,0xD259,0xD258,0xD25B,0xD25A,0xD25D,0xD25C,0xD272,0xD271,0xD270,0xD26F,0xD268)
				Write(0xD26A,0xD269,0xD249,0xD248,0xD26C,0xD26B,0xD26E,0xD26D,0xD270,0xD26F,0xD272,0xD271)
				BattleHPWrite()
			end
		end
		
		
	
	emu.frameadvance();
end