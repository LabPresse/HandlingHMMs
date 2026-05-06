function                                                  ...
  sample = sampleUniform(Minimum,Maximum)

  if nargin < 2
    if isscalar(Minimum);    Maximum = Minimum   ;    Minimum = 0         ; % Assume length from origin.
    else                ;    Maximum = Minimum(2);    Minimum = Minimum(1); % Assume endpoints given.
    end
  end

           if isnumeric(Minimum) & isnumeric(Maximum)
             if Minimum  > Maximum                        ...
             || Minimum == -inf                           ...
             || Maximum == +inf
                disp("<sampleUniform>InvalidInputDomain:" ...
                     +"∃ 𝕌[rₘᵢₙ,rₘₐₓ] ∀ ℝ(-∞<rₘᵢₙ<rₘₐₓ<+∞).");
               sample = NaN;                           return
             end
           end
  u      = unifrnd(0,1)                 ;
  sample = Minimum + (Maximum - Minimum);

end