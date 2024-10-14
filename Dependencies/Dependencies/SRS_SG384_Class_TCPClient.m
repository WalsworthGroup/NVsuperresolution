classdef SRS_SG384_Class_TCPClient < handle
    %%% UNTITLED2 Summary of this class goes here
    %%% Class Functions
    %%%     Initialize(input_address)
    %%%     GetMWAmpl()
    %%%     SetMWAmpl(power) in dBm
    %%%     GetMWFreq()
    %%%     SetMWFreq(freq) in GHz
    %%%     GetMWStat() 
    %%%     SetMWStat(bool) sets on/off state
    %%%     Close()
    
    properties
        address; %% Can be a GPIB or VISA object 
    end
    
    methods
        
        function SigGen = Initialize(SigGen, input_adress)
            %%% Creates a SRS 384 class object
            %%% takes an an address object as input
            %%% This can be a GPIB object like gpib('ni', 0, 26)
            %%% or a VISA object like visa('ni', 'TCPIP::*IP address*::INSTR')
            SigGen.address = input_adress;
        end
        
        
        function output = GetMWAmpl(SigGen)
            %% Returns amplitude in dBm
            writeline(SigGen.address, 'AMPR?');
            output = readline(SigGen);
        end
        
        
        function SetMWAmpl(SigGen,power)
            % set signal power, default is dBm
            writeline(SigGen.address, ['AMPR ' num2str(power)] );
        end
        
        
        function output = GetMWFreq(SigGen)
            %%% Returns freq in GHz
            writeline(SigGen.address, 'FREQ? GHz');
            output = sscanf(readline(SigGen.address),'%f');
        end
        
        
        function SetMWFreq(SigGen,freq)
            %% Set MW freq in GHz
            writeline(SigGen.address, ['FREQ ' num2str(freq, '%.8f') ' GHz']);
        end
        
        
        function output = GetMWStat(SigGen) %%% KSO: Gets On/Off status
            %%% Gets output status
            writeline(SigGen.address, 'ENBR?');
            output = eval(sscanf(SigGen.address));
        end
        
        
        function SetMWStat(SigGen, on_off) %%%KSO: sets On/off status
            %%% Sets output status, on_off = 1 or 0
            writeline(SigGen.address, ['ENBR ' num2str(on_off)]);
        end
        
       
    end %% methods end

end %% class end

