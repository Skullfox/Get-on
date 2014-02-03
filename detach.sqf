
_name = name player;

{
    _searchCar = nearestObjects [player,["B_MRAP_01_F"], 5]; 
	_car = _searchCar select 0; //car
    
  	_var = _car getVariable _x;
    _currentSeat = _x;
   
    _seat = _var select 0; 
	_player = _var select 1;  
    _status = _var select 2;
    
 	hint format[" %1",_player];
    
    if(typename _player != "BOOL" )then{
          
	    if(_player == player)then{
	        _car setvariable [_currentSeat, [FALSE,FALSE,FALSE],TRUE];
	        hint format["seat cleared %1",_currentSeat];
	    }else{
	        
	    };
	};
   player sidechat format["%1 | %2 | %3",_seat,_player,_status]; 

} forEach ["seat1","seat2","seat3","seat4"];



//hint format["%1",_seat1];
(finddisplay 46) displayRemoveAllEventHandlers "KeyDown";
detach player;
player switchMove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon_getOutLow";
