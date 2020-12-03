function sheet = choosesheet
% sheet = choosesheet
% 
% No inputs
%
% Output
%   sheet - user chosen excel sheet to open

% Jim Finnegan
% ES-55 Final Project

% Code adapted from https://www.mathworks.com/help/matlab/ref/dialog.html
%   diaglog that returns output example

%     d = dialog('Position',[300 300 250 150],'Name','Select One');
    d = dialog('Position',[500 500 250 150],'Name','Select One');
    txt = uicontrol('Parent',d,...
           'Style','text',...
           'Position',[20 80 210 40],...
           'String','Select a shape to analyze:');
       
    popup = uicontrol('Parent',d,...
           'Style','popup',...
           'Position',[75 70 100 25],...
           'String',{'airfoil';'circle'},...
           'Callback',@popup_callback);
       
    btn = uicontrol('Parent',d,...
           'Position',[89 20 70 25],...
           'String','OK',...
           'Callback','delete(gcf)');
       
    sheet = 'airfoil';
       
    % Wait for d to close before running to completion
    uiwait(d);
   
       function popup_callback(popup,event)
          idx = popup.Value;
          popup_items = popup.String;
          sheet = char(popup_items(idx,:));
       end
end