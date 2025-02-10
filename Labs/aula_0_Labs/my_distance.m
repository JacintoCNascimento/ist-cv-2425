

function dfinal = distances(pattern, unit)

p = pattern;
z = unit;
[lP,nP ]=size(p);
[lZ,nZ ]=size(z);

%dfinal = repmat(p.^2',1,nZ) + repmat(z.^2,nP,1) - 2*p'*z;

dfinal = diag(p'*p)*ones(1,nZ) + ones(nP,1)*diag(z'*z)' - 2*p'*z;