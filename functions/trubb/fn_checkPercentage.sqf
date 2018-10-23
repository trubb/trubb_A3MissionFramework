params [
	"_side",
	"_ratio"
];

private _startCount;

if (_side == west) {
	_startCount = w_startCount;
} else if (_side == east) {
	_startCount = e_startCount;
} else if (_side == resistance){
	_startCount = i_startCount;
}

private _percentageLeft = [_side, _startCount] call trubb_fn_calculatePercentage;

