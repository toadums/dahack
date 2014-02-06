var input = '10\n\
cat\n\
cat\n\
cat\n\
dog\n\
cats hats\n\
the cats hats\n\
cats hats\n\
the cats in the hats\n\
catshats\n\
the cats hats\n\
catshats\n\
thecatshats\n\
luke bryant john\n\
Luke Bryant Johnston\n\
lukebryantjohn\n\
Luke Bryant Johnston\n\
luke bry john\n\
Luke Bryant Johnston\n\
lu ke\n\
luke Bryant Johnston';

var input_array = input.split('\n');

var num = input_array[0];

for(var i = 1;i<input_array.length-1;i+=2)
{
	var query = input_array[i]
	var body = input_array[i+1];

	if(body.indexOf(query) !== -1 || body.toLowerCase().indexOf(query) !== -1)
	{
		if(body.indexOf(' ') !== -1 || body.toLowerCase().indexOf(' ') !== -1)
		{
			console.log('true');
			//found normally, good to go
		}
		else
		{
			if(body.indexOf(query) === 0 || body.toLowerCase().indexOf(query) === 0)
			{
				console.log('true');
			}
			else
			{
				console.log('false');
			}
		}
	}
	else
	{
		var body_no = body.replace(/ /g,'');
		if(body_no === body)
		{
			//no spaces
			if(body.indexOf(query) === 0 || body.toLowerCase().indexOf(query) === 0)
			{
				console.log('true');
			}
			else
			{
				console.log('false');
			}
		}
		else{
			if(body_no.indexOf(query) !== -1 || body_no.toLowerCase().indexOf(query) !== -1)
			{
				console.log('true');
			} 
			else
			{
				console.log('false');
			}
		}
	}
}