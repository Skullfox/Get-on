_player = _this select 1;
_arg = _this select 3;


_car = _arg select 0; 
_seat = _arg select 1; 
_side = _arg select 2; 

_fix = _arg select 3; 

_type = typeOf _car;


_player setvariable ['pain_car',_car,TRUE];

    _var = _car getVariable _seat;
    _name = _var select 1; 
    
	//_fix = [_type] call pain_selecHeightServer;

    if(typename _name == "BOOL" )then{
        
    switch (_seat) do 
		{
		    case 'seat1' : {

                if(_fix)then{
					_player attachTo [_car,[1.3,-1.6,-1.99]];//vorne rechts
                }else{		
					_player attachTo [_car,[1.3,-1.6,-1.42]];//vorne rechts
                };
            };
		    case 'seat2' : {               
                if(_fix)then{
					_player attachTo [_car,[-1.4,-1.6,-1.99]];//vorne rechts
                }else{	                
					_player attachTo [_car,[-1.4,-1.6,-1.42]]; //vorne links
                };
            };
		    case 'seat3' : {
                if(_fix)then{
					_player attachTo [_car,[1.3,-2.2,-1.99]];//vorne rechts
                }else{	
					_player attachTo [_car,[1.3,-2.2,-1.42]]; //hinten rechts
                };
            };
		    case 'seat4' : {
                if(_fix)then{
					_player attachTo [_car,[-1.4,-2.2,-1.99]];//vorne rechts
                }else{	              
					 _player attachTo [_car,[-1.4,-2.2,-1.42]]; //hinten links
                 };
            };                        
        };
           
  			
            
		if(_side)then{
			[_player, "Acts_passenger_boat_holdleft"] call pain_playAnimationAll;
		}else{
			[_player, "Acts_passenger_boat_holdright"] call pain_playAnimationAll;
		};
        _car setvariable [_seat, [_seat,_player,TRUE],TRUE];
        waitUntil {!isNull(findDisplay 46)};  
		(findDisplay 46) displayAddEventHandler ["KeyDown","_var = [_this select 1,player] execVM 'pain_car\scripts\detach.sqf'"]; 

    }else{
       //Debug
    };   