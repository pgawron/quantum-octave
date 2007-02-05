## -*- texinfo -*-
## @deftypefn{Function file} {} Measure(@var{state})
## Function @code{channel} generalized quantum evolution on the state @var{state}.
## @example
## @group
## Channel(State(Ket([0,1])), { sqrt(0.5)*Id(),1-sqrt(0.5)*Sz })
##  @result{}
##
## @end group
## @end example
## @end deftypefn
## @seealso {MeasureZ}

function ret = Channel(state,elements,targv)
	if (nargin>3)
		usage("Channel (state, elements_list [,targv])");
	end
	if (!islist(elements) )
		error("Second argument must be a list!");
	end
	
	# dimension of the state
	dim = size(state(1));
	qDim = log2(size(state)(1));
	noEl = size(elements)(2);
	ret  = zeros(dim);

	if (nargin=2)
		targv = 1:qDim;
	end 

	isTarget=zeros(1,qDim)
	for k=targv
		isTarget(k)=1;
	end
	
	for i=0:noEl^qDim-1 
		strPos = dec2base(i,noEl,qDim);
		mtx = 1;
		for l=1:qDim
			idx = str2num(strPos(l))+1;
			if (isTarget(l))
				mtx = Kron(mtx,nth(elements,idx));
				targv(l)
				mtx
			else
				mtx = kron(mtx,Id);
			end
		end
		tmp = mtx*state*mtx;
		ret = ret + tmp;
	end

end
