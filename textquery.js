var input = '10\n\
steve\n\
steve\n\
steve\n\
steve bartman\n\
steve\n\
bartman, steve\n\
steve\n\
stevebartman\n\
steve\n\
bartmansteve\n\
stevebartman\n\
steve bartman\n\
steve h bartman\n\
steve henry bartman\n\
steve henry bart\n\
steve henry bartman\n\
stevehenrybart\n\
steve henry bartman\n\
eve henry bart\n\
steve henry bartman';

var input_array = input.split('\n');

var num = input_array[0];
console.log(num);
for(var i = 1;i<input_array.length-1;i+=2)
{
	var query = input_array[i]
	var body = input_array[i+1];

	if(body.indexOf(query) !== -1 || body.toLowerCase().indexOf(query) !== -1)
	{
		if(body.indexOf(' ') !== -1 || body.toLowerCase().indexOf(' ') !== -1)
		{
			if(body.indexOf(query) === 0 || body.toLowerCase().indexOf(query) === 0)
			{
				console.log('true');
			}
			else
			{
				console.log('false');
			}
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