function coords = genboundedscanlimits(x,deltax,minbound,maxbound)
% Generates lower and upper bounds for scanning within the
% bounds of [minb, maxb]
lowbound = x - deltax/2;
lowbound = forcebound(lowbound,minbound,maxbound);
highbound = x + deltax/2;
highbound = forcebound(highbound,minbound,maxbound);
coords = [lowbound,highbound];
end