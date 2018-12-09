/*
	File: fn_TFARcheck.sqf
	Author: Dom
	Description: Checks clients TFAR status every 2 seconds via a CBA PFH
*/

[
	{
		private _somethingWrong = false;
		if !(call TFAR_fnc_isTeamSpeakPluginEnabled) then {
			titleText ["Please enable Task Force Radio in your TS3 Addons. | TS3 -> Tools -> Options -> Addons","BLACK"];
			_somethingWrong = true;
		} else {
			if !((call TFAR_fnc_getTeamSpeakServerName) isEqualTo "ServerHere") then {
				titleText ["Please join the ServerHere teamspeak server. | ip","BLACK"];
				_somethingWrong = true;
			} else {
				if !((call TFAR_fnc_getTeamSpeakChannelName) isEqualTo "TaskForceRadio") then {
					titleText ["Please reload your Task Force Radio in your TS3 Addons to join the correct channel.","BLACK"];
					_somethingWrong = true;
				};
			};
		};
		if !(_somethingWrong) then {
			titleText ["","PLAIN"];
			if !(player getVariable ["TFAR",true]) then {
				player setVariable ["TFAR",true,-2];
			};
		} else {
			if (player getVariable ["TFAR",true]) then {
				player setVariable ["TFAR",false,-2];
			};
		};
	},
	2
] call CBA_fnc_addPerFrameHandler;