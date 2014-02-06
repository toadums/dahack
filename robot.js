var direction = '01';

var position = [0,0];



var input = 'Move 2\n\
Turn right\n\
Move 4\n\
Turn left\n\
Move -5\n\
Turn right\n\
Move 10\n\
Turn left\n\
Move -2\n\
Turn left\n\
Turn left\n\
Move 5\n\
Move -2\n\
Turn right\n\
Move 1\n\
Move 0';

var input_array = input.split('\n');

var directions_array = [];

for(var i = 0;i<input_array.length;i++)
{
	directions_array.push(input_array[i].split(' '));
}


for(var i = 0;i<directions_array.length;i++)
{
	if(directions_array[i][0] === 'Move')
	{
		//Move
		switch(direction)
		{
			case '01':
				position[1] += parseInt(directions_array[i][1]);
				break;
			case '0-1':
				position[1] -= parseInt(directions_array[i][1]);
				break;
			case '10':
				position[0] += parseInt(directions_array[i][1]);
				break;
			case '-10':
				position[0] -= parseInt(directions_array[i][1]);
				break;
		}

	}
	else
	{
		//Turn
		switch(directions_array[i][1])
		{
			case 'left': //10
				switch(direction)
				{
					case '01':
						direction = '-10';
						break;
					case '0-1':
						direction = '10';
						break;
					case '10':
						direction = '01';
						break;
					case '-10':
						direction = '0-1';
						break;
				}
				break;
			case 'right': //-10
				switch(direction)
				{
					case '01':
						direction = '10';
						break;
					case '0-1':
						direction = '-10';
						break;
					case '10':
						direction = '0-1';
						break;
					case '-10':
						direction = '01';
						break;
				}
				break;
			default:
				break;

		}
	}
	console.log(position[0] + ',' + position[1]);

}