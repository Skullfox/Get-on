_key = _this select 0;

_keymap = ['47','18'] find str _key;
player sidechat format["%1",_keymap];

if(str _keymap != "-1")then{

	_name = name player;
	
	{
	    _searchCar = nearestObjects [player,["B_MRAP_01_F","B_MRAP_01_hmg_F","B_MRAP_01_gmg_F","GLT_Oshkosh_JLTV_HMG","GLT_Oshkosh_JLTV_GMG"], 4]; 
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
	_var = (finddisplay 46) displayRemoveAllEventHandlers "KeyDown";
	
	
	hint str _key;
	switch (str _key) do 
	{
	    case '47' : {
	        detach player;
	   		 [player, ""] call pain_playAnimationAll; 
	         };
	    case '18' : {
	        detach player;
	   		 [player, "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon_getOutLow"] call pain_playAnimationAll; 
	         };
	};    
    

};
 
