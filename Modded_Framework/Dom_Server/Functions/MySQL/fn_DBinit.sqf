/*
	File: fn_DBinit.sqf
	Author:
	Description:
	Initializes extDB, loads Protocol + options if any + Locks extDB
	Parameters:
		0: STRING Database name as in extdb3-conf.ini
*/

params [
	["_database","",[""]]
];

private _return = false;

if ( isNil {uiNamespace getVariable "extDB_SQL_CUSTOM_ID"}) then {
	//---  extDB Version
	private _result = "extDB3" callExtension "9:VERSION";

	diag_log format ["extDB3: Version: %1", _result];
	if(_result isEqualTo "") exitWith {diag_log "extDB3: Failed to Load"; false};
	//--- if ((parseNumber _result) < 20) exitWith {diag_log "Error: extDB version 20 or Higher Required";};

	//---  extDB Connect to Database
	_result = parseSimpleArray ("extDB3" callExtension format["9:ADD_DATABASE:%1", _database]);
	if (_result select 0 isEqualTo 0) exitWith {diag_log format ["extDB3: Error Database: %1", _result]; false};
	diag_log "extDB3: Connected to Database";

	//---  Generate Randomized Protocol Name
	private _random_number = round(random(999999));
	private _extDB_SQL_CUSTOM_ID = str(_random_number);
	extDB_SQL_CUSTOM_ID = compileFinal _extDB_SQL_CUSTOM_ID;

	//---  extDB Load Protocol
	_result = parseSimpleArray ("extDB3" callExtension format["9:ADD_DATABASE_PROTOCOL:%1:SQL_CUSTOM:%2:Database1.ini", _database, _extDB_SQL_CUSTOM_ID]);
	if ((_result select 0) isEqualTo 0) exitWith {diag_log format ["extDB3: Error Database Setup: %1", _result]; false};

	diag_log "extDB3: Initalized SQL_CUSTOM Protocol";

	//---  extDB3 Lock
	"extDB3" callExtension "9:LOCK";
	diag_log "extDB3: Locked";

	//---  Save Randomized ID
	uiNamespace setVariable ["extDB_SQL_CUSTOM_ID", _extDB_SQL_CUSTOM_ID];
	_return = true;
} else {
	extDB_SQL_CUSTOM_ID = compileFinal str(uiNamespace getVariable "extDB_SQL_CUSTOM_ID");
	diag_log "extDB3: Already Setup";
	_return = true;
};

_return