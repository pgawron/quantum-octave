General information
^^^^^^^^^^^^^^^^^^^
QuantumOctave is a set of GNU Octave function for doing quick-and-dirty simulations of quantum computers and -- in general -- quantum systems. 

Our ambition is implementation of complete set of function needed for performing quantum computation.


You can download the package from the project home page.

	http://quantum-octave.sf.net/ 

Instalation
^^^^^^^^^^^
To use quantum-octave you need GNU Octave in version higer then 2.1.35. You can download it for

	http://www.octave.org/
	
or, if you using Linux, install binary version which ships with your distribution.
	
Ungzip an untar with m-files and add directory quantum-octave to OCTAVE_PATH environment variable. 
Users of bash compatible shell should type

	export OCTAVE_PATH=$OCTAVE_PATH:/path/to/quantm-octave:/path/to/quantm-octave/examples

Package was tested with GNU Ocatve versions 2.1.35 and 2.1.35. We encourage you to use the newest
version available.

Available functions
^^^^^^^^^^^^^^^^^^^

Here we list the most important function implemented in quantum-octave. You can find more 
detailed listing in documentation.

- Construction of quantum states: Ket, KetN, State, MixStates,
- Construction of quantum circuit: Id, ProductGate, ControlledGate, RotX, RotY, RotZ, Pase
- Testing: IsState, IsPositive, IsPPT,
- Useful constants: PhiP, PhiM, PsiP, PsiM, H, Not, Sx, Sy, Sz, 
- Analysis of entanglement: Entropy, Negativity, TrNorm
- Error codes: Encode, Recover, Decode
- Operations: PTrace, PTranspose, Measure, MeasureZ

If you thing that that some function should be added to this list send an e-mail to authors.


Contact
^^^^^^^

Any suggestions should be directed to authors:
piotr_gawron (at) users sf net
jarekadam (at) users sf net

Last modyfication: 
Sat Mar 27 18:36:45 UTC 2004
