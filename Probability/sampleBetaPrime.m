function Sample  = sampleBetaPrime(Shapes,varargin)
  if nargin  == 1 && ~isscalar(Shapes);    a = Shapes(1);    b = Shapes(2)  ;
  else                                ;    a = Shapes   ;    b = varargin{1};
  end
  u = sampleGamma(a,1);
  v = sampleGamma(b,1);

  Sample  = u / v     ;
end


%[appendix]{"version":"1.0"}
%---
