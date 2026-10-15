function varargout = grafsincos(a)
b = sin(a);
c = cos(a);
switch nargout
    case 0
        hold on
        plot(a,b, 'r--')
        plot(a,c, 'b-.')
    case 1
        varargout{1} = [b c];
end
end