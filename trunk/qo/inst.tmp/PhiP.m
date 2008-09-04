%% -*- texinfo -*-
%% @deftypefn {Function file} {} PhiP
%% Function @code{PhiP} returns @code{Ket} vector
%% for @code{1/sqrt(2)*(Ket([0,0]) + Ket([1,1]))} Bell state.
%% 
%% @end deftypefn
%%
%% @seealso {Ket, PhiM, PsiP, PsiM, GHZ, W, Werner}
%%

function ret = PhiP 
	ret = 1/sqrt(2)*[1,0,0,1]';
end