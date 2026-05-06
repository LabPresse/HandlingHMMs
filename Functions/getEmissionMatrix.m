function        ...
  EmissionMatrix = getEmissionMatrix(Observations, EmissionModel, nStates)
  Observations   = Observations(:)     ;
  Count          = numel(Observations) ;
  EmissionMatrix = zeros(Count,nStates);

  for k = 1 : nStates ;    EmissionMatrix(:,k) = EmissionModel(Observations,k);    end

end