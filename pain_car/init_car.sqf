_car = _this select 0;


_action1 = _car addAction ["<t color='#00FFFF'>Aufsteigen[1|VR]</t>", "pain_car\scripts\car.sqf",[_car,"seat1",TRUE],10,false,false,"","[player,_target,'seat1'] call isAvailable"];
_action2 = _car addAction ["<t color='#00FFFF'>Aufsteigen[2|VL]</t>", "pain_car\scripts\car.sqf",[_car,"seat2",FALSE],9.9,false,false,"","[player,_target,'seat2'] call isAvailable"];
_action3 = _car addAction ["<t color='#00FFFF'>Aufsteigen[3|HR]</t>", "pain_car\scripts\car.sqf",[_car,"seat3",TRUE],9.8,false,false,"","[player,_target,'seat3'] call isAvailable"];
_action4 = _car addAction ["<t color='#00FFFF'>Aufsteigen[4|HL]</t>", "pain_car\scripts\car.sqf",[_car,"seat4",FALSE],9.7,false,false,"","[player,_target,'seat4'] call isAvailable"];

_car setvariable ['seat1', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat2', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat3', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat4', [FALSE,FALSE,FALSE],TRUE];






