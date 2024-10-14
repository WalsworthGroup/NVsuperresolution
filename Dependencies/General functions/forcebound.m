function newnum = forcebound(num,minbound,maxbound) %enforce limits on a number
newnum = num;
newnum = max(newnum,minbound);
newnum = min(newnum,maxbound);
end