## -*- texinfo -*-
## @deftypefn {Function file} {} CPhase(@var{size},@var{phase},@var{contrv},@var{targetv})
## Function @code{CPhase} returns controled phase rotation by @var{phase} on qubits @var{targetv} 
## controled by @var{contrv}. Size of the result gate is given by @var{size}.
## @end deftypefn
##
## @seealso {Not, ControledGate, CNot}
##
## Author: Piotr Gawron, Jaroslaw Miszczak
##
## Created: 01 June 2004
##


function ret = CPhase(size,phase,contrv,targetv)
if (nargin != 4) 
	usage ("CPhase (size, phase, control, targets)");
endif

p=Phase(0,phase);

ret = ControlledGate(size, p, contrv, targetv );

endfunction