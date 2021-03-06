function opt=reselect_options(options,fn)
% INTERNAL FUNCTION: discards the options not used by a function
%
% ::
%
%   opt=reselect_options(options,fn)
%
% Args:
%
%    - **options** [struct]: all options
%    - **fn** [char|function_handle]: function whose options we are interested
%      in.
%
% Returns:
%    :
%
%    - **opt** [struct]: options of function fn
%
% Note:
%
%    - the function of interest should be such that if called without inputs,
%      it returns its default options.
%

if ischar(fn)

    fn=str2func(fn);

end

defaults=fn();

if ~isstruct(defaults)

    defaults=disp_defaults(defaults);

end

fn_fields=fieldnames(defaults);

opt_fields=fieldnames(options);

opt=rmfield(options,opt_fields-fn_fields);

end