
# https://discourse.gohugo.io/t/simple-deployment-to-gh-pages/5003

all: ship

ship: build
	# if the following line fails, you need to commit first
	test -z "`git status --porcelain`"
	# commit the changes in the clone and push them back to the local gh-pages branch
	cd public && git add --all && (git commit -m "publish to gh-pages" || true) && git push -u origin gh-pages
	git push -u origin gh-pages
	git push

build: graphs
	hugo

graphs:
	make -C content/docs/change/
	make -C static/docs/roadmap/

clean:
	# remove previous publication
	rm -rf public
	# clone gh-pages branch from the local repo into a repo located within "public"
	git clone .git --branch gh-pages public

# Run this to initialize the public directory in the clone of a fork
clean-fork:
	rm -rf public
	git clone git@github.com:ciwg/cswg.git public
	git remote remove origin
	git remote add origin $(PWD)/.git
	cd public && git checkout gh-pages
	cd public && git push -u origin gh-pages
