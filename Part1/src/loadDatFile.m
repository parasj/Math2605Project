function [ A ] = loadDatFile( datFile )
    delimiterIn = ' ';
    A = importdata(datFile, delimiterIn);
end