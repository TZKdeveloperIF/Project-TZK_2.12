private ["_vx", "_vy", "_yS"];
private ["_c", "_g", "_h", "_t", "_x", "_y"]; 
private ["_vx0", "_vy0",  "_K1", "_L1", "_K2", "_L2", "_K3", "_L3", "_K4", "_L4"];

_vx = _this select 0; _vy = _this select 1; _yS = _this select 2;

_x = 0;	_y = _yS;	_vy0 = _vy;
_g = 9.80665; _h = 0.05; _c = -0.0005;

while "_vy0 >= 0 && _vy >= 0" do {
	_vx0 = _vx;_vy0 = _vy;
	
	_K1 = _c*_vx*sqrt(_vx^2+_vy^2); _L1 = _c*_vy*sqrt(_vx^2+_vy^2)-_g;
	_K2 = _c*(_vx+_h/2*_K1)*sqrt((_vx+_h/2*_K1)^2+(_vy+_h/2*_L1)^2); _L2 = _c*(_vy+_h/2*_L1)*sqrt((_vx+_h/2*_K1)^2+(_vy+_h/2*_L1)^2)-_g;
	_K3 = _c*(_vx+_h/2*_K2)*sqrt((_vx+_h/2*_K2)^2+(_vy+_h/2*_L2)^2); _L3 = _c*(_vy+_h/2*_L2)*sqrt((_vx+_h/2*_K2)^2+(_vy+_h/2*_L2)^2)-_g;
	_K4 = _c*(_vx+_h/2*_K3)*sqrt((_vx+_h/2*_K3)^2+(_vy+_h/2*_L3)^2); _L4 = _c*(_vy+_h/2*_L3)*sqrt((_vx+_h/2*_K3)^2+(_vy+_h/2*_L3)^2)-_g;

	_vx = _vx+_h/6*(_K1+2*_K2+2*_K3+_K4);
	_vy = _vy+_h/6*(_L1+2*_L2+2*_L3+_L4);
	_x=_x+_h/2*(_vx0+_vx);
	_y=_y+_h/2*(_vy0+_vy);
};
[_x, _y]