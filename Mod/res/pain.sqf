pain_isAvailable = {

	_player = _this select 0;
	_car = _this select 1;
	_seat = _this select 2;    

  	_var = _car getVariable _seat;
    
    _status = _var select 2;
    
	if( ( ((_car distance _player) < 4) && (vehicle _player != _car) ) && (!_status) && (alive _car) )then{
		true
    }else{
    	false
    };
    
};


pain_playAnimation = {
    private ["_player", "_animation"];

    _player = _this select 0;
    _animation = _this select 1;
	_player switchmove _animation;
};


// Executed on all machines.
pain_attachToCar = {
    private ["_player", "_car"];

    _player = _this select 0;
    _car = _this select 1;

    // Code goes here!
};

// Executed on the server.
pain_selecHeight  = {
    private ["_type"];

    _type = _this select 0;

	_needNoFix = ["B_MRAP_01_F"];
	_carsArrayToFix = ["B_MRAP_01_hmg_F","B_MRAP_01_gmg_F","GLT_Oshkosh_JLTV_HMG","GLT_Oshkosh_JLTV_GMG"];
    
	_check = _carsArrayToFix find  _type;
    
	if(str _check != "-1")then{
        true
    }else{
        false
    };
};






player globalchat "Pain's library initialized";
