// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: spawns.sqf
//	@file Author: Chick69

private _spawn =
[
	["Spawn1", -1, "Quelque Part"],
	["Spawn2", -1, "Ailleurs"],
	["Spawn3", -1, "La bas"],
	["Spawn4", -1, "Ici"],
	["Spawn5", -1, "Pas loin de ..."],
	["Spawn6", -1, "Perdus..."],
	["Spawn7", -1, "Au fond"],
	["Spawn8", -1, "Sur le bord de mer"],
	["Spawn9", -1, "La plage"],
	["Spawn10", -1, "très loin..."]
];

//copyToClipboard str ((allMapMarkers select {_x select [0,5] == "Town_"}) apply {[_x, -1, markerText _x]})

private "_size";
 
{
	_x params ["_marker"];

	if (markerShape _marker == "ELLIPSE") then
	{
		_size = markerSize _marker;
		_x set [1, (_size select 0) min (_size select 1)];
	};
} forEach _spawn;

_spawn
