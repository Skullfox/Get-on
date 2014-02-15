class CfgPatches
{
	class pain_car
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.0;
		requiredAddons[] = {"CBA_MAIN"};
		author[] = {"Pain aka Phil"};
		authorUrl = "";
	};
};

class Extended_PreInit_EventHandlers
{
    load_init = "if (!isDedicated) then {call compile preprocessFileLineNumbers '\pain_car\XEH_PreInit.sqf'}";


};

class Extended_Init_EventHandlers 
{
	class B_MRAP_01_F 
	{
		B_MRAP_01_F_init = [_this] execVM '\pain_car\init_car.sqf';
	};

	class B_MRAP_01_hmg_F
	{
		B_MRAP_01_hmg_F_init = [_this] execVM '\pain_car\init_car.sqf';
	};

	class B_MRAP_01_gmg_F
	{
		B_MRAP_01_gmg_F_init = [_this] execVM '\pain_car\init_car.sqf';
	};

	class GLT_Oshkosh_JLTV_HMG
	{
		GLT_Oshkosh_JLTV_HMG_init = [_this] execVM '\pain_car\init_car.sqf';
	};

	class GLT_Oshkosh_JLTV_GMG
	{
		GLT_Oshkosh_JLTV_GMG_init = [_this] execVM '\pain_car\init_car.sqf';
	};

};
