all: save deploy

save:
	git add .; git commit -m "Update"

deploy:
	git push

s: server
server:
	livereloadx -s -p 3000 --include "*.md"
	# livereloadx ./deep-learning-book & echo "$$!" > "./temp/livereloadx.pid"
	# php -S localhost:3000
	# kill -9 `cat ./temp/livereloadx.pid`
	# rm ./temp/livereloadx.pid

pdf:
	# livereloadx -s -p 3001 --include "*.md" &
	php -S localhost:3001 & echo "$$!" > "./decktape-temp.pid"
	lib_backup/decktape/decktape-1.0.0/phantomjs-osx lib_backup/decktape/decktape-1.0.0/decktape.js remark http://localhost:3001/${name}/ ./output/${name}.pdf
	kill -9 `cat ./decktape-temp.pid`
	rm ./decktape-temp.pid
	open output/${name}.pdf
