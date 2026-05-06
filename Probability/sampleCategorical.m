function Sample = sampleCategorical(Probabilities)
% Draw an integer state in 1..K from a Categorical Distribution.
  Cumulative = cumsum(Probabilities(:)')           ;
  Sample     = find(rand <= Cumulative, 1, "First");
end