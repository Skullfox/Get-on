_car = _this select 0;


_action1 = _car addAction ["Aufsteigen[1|VR]", "car.sqf",[_car,"seat1"],0,false,false,"","((_target distance _this) < 4)"];
_action2 = _car addAction ["Aufsteigen[2|VL]", "car.sqf",[_car,"seat2"],0,false,false,"","((_target distance _this) < 4)"];
_action3 = _car addAction ["Aufsteigen[3|HR]", "car.sqf",[_car,"seat3"],0,false,false,"","((_target distance _this) < 4)"];
_action4 = _car addAction ["Aufsteigen[4|HL]", "car.sqf",[_car,"seat4"],0,false,false,"","((_target distance _this) < 4)"];

_car setvariable ['seat1', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat2', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat3', [FALSE,FALSE,FALSE],TRUE];
_car setvariable ['seat4', [FALSE,FALSE,FALSE],TRUE];