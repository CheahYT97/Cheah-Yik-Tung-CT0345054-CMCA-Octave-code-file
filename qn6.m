while 1
	name = input('Enter name: ', 's');
	address = input('Enter address: ', 's');
	amount = input('Enter amount of purchase: $');
	type = input('Enter type of purchase (L for Laptop/D for Desktop): ', 's');

  
 
	if ~strcmp(lower(type), 'l') && ~strcmp(lower(type), 'd')
		disp('Invalid type of purchase');
	else
	
		if amount > 1000
			if strcmp(lower(type), 'l')
				amount = (1-0.1)*amount;
			else
				amount = (1-0.15)*amount;
			end
			
		elseif amount >= 571
			if strcmp(lower(type), 'l')
				amount = (1-0.075)*amount;
			else
				amount = (1-0.1)*amount;
			end
			
		elseif amount >= 251
			if strcmp(lower(type), 'l')
				amount = (1-0.05)*amount;
			else
				amount = (1-0.076)*amount;
			end
		else
			if strcmp(lower(type), 'd')
				amount = (1-0.05)*amount;
			end
		end
    fprintf(['Name:' disp(output= name)]);
    fprintf(['Address:' disp(output= address)]);
		disp(['Net Amount: $', num2str(amount)]);
	end
	
	cont = input('Do you wish to continue purchase(Y/N): ', 's');
	if ~(strcmp(lower(cont), 'y'))
		break
	end
end

disp('You have exit purchase screen, goodbye.')

