_car = _this select 0;
_fix = _this select 1;

//hint format["%1 | %2",_car,_fix];
_car = _car select 0;

_action1 = _car addAction ["<t color='#00FFFF'>Aufsteigen[1|VR]</t>", "\pain_car\scripts\car.sqf",[_car,"seat1",TRUE,_fix],10,false,false,"","[player,_target,'seat1'] call pain_isAvailable"];
_action2 = _car addAction ["<t color='#00FFFF'>Aufsteigen[2|VL]</t>", "\pain_car\scripts\car.sqf",[_car,"seat2",FALSE,_fix],9.9,false,false,"","[player,_target,'seat2'] call pain_isAvailable"];
_action3 = _car addAction ["<t color='#00FFFF'>Aufsteigen[3|HR]</t>", "\pain_car\scripts\car.sqf",[_car,"seat3",TRUE,_fix],9.8,false,false,"","[player,_target,'seat3'] call pain_isAvailable"];
_action4 = _car addAction ["<t color='#00FFFF'>Aufsteigen[4|HL]</t>", "\pain_car\scripts\car.sqf",[_car,"seat4",FALSE,_fix],9.7,false,false,"","[player,_target,'seat4'] call pain_isAvailable"];

_car setvariable ['seat1', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat2', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat3', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat4', [FALSE,FALSE,FALSE],TRUE];






