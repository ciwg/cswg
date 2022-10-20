all: roadmap.dot concept-map.dot

roadmap.dot: roadmap.yaml
	godecide roadmap.yaml stdout > roadmap.dot.tmp
	mv roadmap.dot.tmp roadmap.dot

concept-map.dot: concept-map.cmap
	conceptual concept-map.cmap concept-map.dot


