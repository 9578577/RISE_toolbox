function db=rolling(db,func,window,varargin)%,min_periods
% INTERNAL FUNCTION
%

db=ts_roll_or_expand(db,func,window,varargin{:});

end