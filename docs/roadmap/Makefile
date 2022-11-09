all: roadmap-godecide.dot concept-map.dot goalmap.dot goalmap.pdf

goalmap.dot: goalmap.md
	goalmap < goalmap.md > goalmap.dot

goalmap.pdf: goalmap.dot
	dot -Tpdf -o goalmap.pdf goalmap.dot

roadmap-godecide.dot: roadmap-godecide.yaml
	godecide roadmap-godecide.yaml stdout > roadmap-godecide.dot.tmp
	mv roadmap-godecide.dot.tmp roadmap-godecide.dot

concept-map.dot: concept-map.cmap
	conceptual concept-map.cmap concept-map.dot


