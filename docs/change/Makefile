inputs:=$(wildcard *.dot)
flows=$(foreach f,$(inputs),$(basename $f))
outputs=$(foreach m,$(flows),$(m).svg)

all: $(outputs)

%.svg: %.dot
	dot -Tsvg $? > $@

