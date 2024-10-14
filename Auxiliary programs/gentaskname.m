function taskname = gentaskname()

% generate random taskhandle name
s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
% find number of random characters to choose from
numRands = length(s);
% specify length of random string to generate
sLength = 8;
% generate random string
taskname = s(ceil(rand(1,sLength)*numRands));

end