function varargout = FunctionPooltest(varargin)

switch varargin{1}
    case 'GetCounts'
        [varargout{1},varargout{2}] = GetCounts(varargin{2},varargin{3});
    case 'GetResult'
        varargout{1} = GetResult(varargin{2});
    otherwise
        disp('DAQmxFunctionPool - I dont get it!');
end

function [res1,res2] = GetCounts(a,b)
res1 = a+b;
res2 = a*FunctionPooltest('GetResult',b);

function res = GetResult(anumber)
res = anumber*2;
  