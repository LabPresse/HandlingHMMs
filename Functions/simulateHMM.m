function [States, Observations] = simulateHMM(nTimes, StationaryDistribution, TransitionMatrix, Mean, Std)
    States       = zeros(nTimes,1);
    Observations = zeros(nTimes,1);
    States(1)    = sampleCategorical(StationaryDistribution);
    Observations(1) = normrnd(Mean(States(1)), Std);
    for n = 2 : nTimes
        States(n)       = sampleCategorical(TransitionMatrix(States(n-1),:));
        Observations(n) = normrnd(Mean(States(n)), Std);
    end
end

%[appendix]{"version":"1.0"}
%---
