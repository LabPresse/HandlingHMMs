function PDF  = pdfBeta(Variable,Shapes,varargin)
  if nargin  == 2 && ~isscalar(Shapes);    a = Shapes(1);    b = Shapes(2)  ;
  else                                ;    a = Shapes   ;    b = varargin{1};
  end
         Beta = gamma(a)*gamma(b) / gamma(a+b)                ;
         PDF  = Variable.^(a-1) .* (1-Variable).^(b-1) ./ Beta;
end

%[appendix]{"version":"1.0"}
%---
