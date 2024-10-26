_pos = getPos FLAK_GUY;
_pos set [2, (_pos select 1) + 800];
_pos set [2, (_pos select 2) + 400];






 {
 } forEach (thisList unitsBelowHeight 200 );
 
{  
 if (isTouchingGround _x) then {continue;}  
 else { 
 _ammo = "LIB_SprGr_FlaK_38_APHE_T"; 
 for "index" from 1 to 50 do { 
 	 _pos = [ ((getPos _x) select 0) + (random [10,20,80]) , ((getPos _x) select 1) + (random [10,50,90]), ((getPos _x) select 2) + (random [10,50,90])]; 
  	[ _pos , nil , _ammo ] call LIB_SYSTEM_FLAK_fnc_createFlakExplosion; 
 };
 } 
} forEach thisList;
