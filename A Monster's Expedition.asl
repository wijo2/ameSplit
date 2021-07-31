state("A Monster's Expedition")
{
	float x : "mono-2.0-bdwgc.dll", 0x003A0C60, 0xA8, 0x550, 0x120;
	float y : "mono-2.0-bdwgc.dll", 0x003A0C60, 0xA8, 0x550, 0x128;
}

init
{
	vars.split = 0;
}

//update{ print("" + vars.split); }

start
{
	if (current.x < 40 && current.y == -36){
		return true;
	}
	vars.split = 0;
}

split
{
	if (current.y > -7 && current.x > 54 && vars.split == 0){
		vars.split = 1;
		return true;
	}
	if (current.y > 0 && vars.split == 1){
		vars.split = 2;
		return true;
	}
	if (current.x < -65 && vars.split == 2){
		vars.split = 3;
		return true;
	}
	if (current.x < -90 && current.y == 19){
			return true;
	}
}
