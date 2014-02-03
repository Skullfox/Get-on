_arg = _this select 3;
_player = _this select 1;

_car = _arg select 0; 
_seat = _arg select 1; 

switch (_seat) do 
{
    case 'seat1' : {
        _var = _car getVariable 'seat1';
        _name = _var select 1; 
        hint format["%1",_var];
        
        if(typename _name == "BOOL" )then{
           
			_player attachTo [_car,[1.2,-1,-1.5]]; //vorne rechts
	        _car setvariable [_seat, [_seat,_player,TRUE],TRUE];
            waitUntil {!isNull(findDisplay 46)};  
			moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown",  "(if (_this select 1 == 18) then {_lunge = [_car] execVM 'detach.sqf'})"]; 

        }else{
           hint format["Platz belegt von : %1",_var];
        };    

	};
 	case 'seat2' : {
		_var = _car getVariable 'seat2';
        _name = _var select 1; 
        hint format["%1",_var];
        
        if(typename _name == "BOOL" )then{
           
        _player attachTo [_car,[-1.4,-1,-1.5]]; //vorne links
        _car setvariable [_seat, [_seat,_player,TRUE],TRUE];
            waitUntil {!isNull(findDisplay 46)};  
			moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown",  "(if (_this select 1 == 18) then {_lunge = [_car] execVM 'detach.sqf'})"]; 

        }else{
           hint format["Platz belegt von : %1",_var];
        };  
        
    };
    case 'seat3' : {
		_var = _car getVariable 'seat3';
        _name = _var select 1; 
        hint format["%1",_var];
        
        if(typename _name == "BOOL" )then{
           
		_player attachTo [_car,[1.2,-2.2,-1.5]]; //hinten rechts
        _car setvariable [_seat, [_seat,_player,TRUE],TRUE];
            waitUntil {!isNull(findDisplay 46)};  
			moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown",  "(if (_this select 1 == 18) then {_lunge = [_car] execVM 'detach.sqf'})"]; 

        }else{
           hint format["Platz belegt von : %1",_var];
        };  

	};
 	case 'seat4' : {
        
		_var = _car getVariable 'seat3';
        _name = _var select 1; 
        hint format["%1",_var];
        
        if(typename _name == "BOOL" )then{
           
        _player attachTo [_car,[-1.4,-2.2,-1.5]]; //hinten links
        _car setvariable [_seat, [_seat,_player,TRUE],TRUE];
            waitUntil {!isNull(findDisplay 46)};  
			moduleName_keyDownEHId = (findDisplay 46) displayAddEventHandler ["KeyDown",  "(if (_this select 1 == 18) then {_lunge = [_car] execVM 'detach.sqf'})"]; 

        }else{
           hint format["Platz belegt von : %1",_var];
        };          
        

    };
 };


