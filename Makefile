all: fact.hex

fact.hex: fact.clsp include/fact.clinc
	run --symbol-output-file fact.sym -i include fact.clsp > fact.clvm
	opc fact.clvm > fact.hex

clean:
	rm -f fact.sym fact.clvm fact.hex
