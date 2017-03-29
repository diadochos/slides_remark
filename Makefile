all: save deploy

save:
	git add .; git commit -m "Update"

deploy:
	git push

s: server
server:
	php -S localhost:3000
