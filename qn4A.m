choice = input('RD(angle_in_degree) or DR (angle_in_radian): ', 's');
fprintf('\n')

if (strcmp(lower(choice),'dr'))
	while 1
		value = input('Enter degrees(Enter Nothing To Exit): ');
    fprintf('\n')
		if isempty(value)
			break
		end
		output = value*pi/180;
		disp([num2str(value),' degrees to radians is: ', num2str(output), ' radians.']);
    fprintf('\n')
	end

elseif (strcmp(lower(choice),'rd'))
	while 1
		value = input('Enter radians(Enter Nothing To Exit): ');
    fprintf('\n')
		if isempty(value)
			break
		end
		output =value * 180/pi;
		disp([num2str(value),' radians to degrees is: ', num2str(output), ' degrees.']);
    fprintf('\n')
	end
else
	disp('You have entered an invalid choice. Ending program..')
end


disp('Bye Bye! Thank you for using the program!')
