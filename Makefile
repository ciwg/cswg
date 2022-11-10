
# https://discourse.gohugo.io/t/simple-deployment-to-gh-pages/5003

all: ship

ship: build 
	test -z "`git status --porcelain`" || git gui
	# commit the changes in the clone and push them back to the local gh-pages branch    
	cd public && git add --all && (git commit -m "publish to gh-pages" || true) && git push origin gh-pages
	git push origin gh-pages
	git push 

build: graphs 
	hugo

graphs:
	make -C content/docs/change/
	make -C static/docs/roadmap/

clean:
	# remove previous publication
	rm -rf public
	mkdir public

setup:
	# clone gh-pages branch from the local repo into a repo located within "public"
	git clone .git --branch gh-pages public
  
