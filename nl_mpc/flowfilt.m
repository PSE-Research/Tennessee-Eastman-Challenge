 
flowfilt.m                                                     MATFMATL           d    �D�ߩDҳ                       ��,+  function [F,u1]=flowfilt(up,yp,F0)

% Filter measured flows in TE process.

% get measured flows in kmol/h

Fconv=[11.2/.25052; 114.5/3664; 98./4509.3; 417.5/9.3477; ...
       1201.5/26.902; 15.1/.33712; 259.5/38.100; 211.3/46.543];

% Flow noise filtering

F=[yp([1:5,10],1);up(7:8,1)].*Fconv;
if ~isempty(F0)
   F=0.7*F0+0.3*F;
end
u1=[F;yp([9,11],1)];
                            