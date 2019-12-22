build:
	npm install
	cp -r ./node_modules/jquery/dist/jquery.js ./assets/js/jquery.js
	cp -r ./node_modules/bootstrap/dist/js/bootstrap.js ./assets/js/bootstrap.js
	cp ./node_modules/@fortawesome/fontawesome-free/js/all.js ./assets/js/all.js
	cp -r ./node_modules/@fortawesome/fontawesome-free/webfonts ./assets/fonts

serve:
	@docker run --rm -it --name www-gianarb \
		-p 4000:4000 \
		-v www-fraefede-cache:/usr/local/bundle \
		-e TZ='Europe/Rome' \
		-v ${PWD}:/srv/jekyll \
		jekyll/jekyll:stable \
		jekyll serve -w --future --drafts

