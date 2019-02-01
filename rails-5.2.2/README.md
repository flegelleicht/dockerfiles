1. Create Dockerfile and entrypoint for `rails`

2. Build rails container

		$ docker build -t flgl/rails:5.2.2 .

3. Run `rails` to create new project

		$ docker run -it -v "$PWD":/app:cached flgl/rails:5.2.2 rails new <app-name>
		create
		create  README.md
		create  Rakefile
		create  .ruby-version
		create  config.ru
		create  .gitignore
		create  ...

4. Enter project’s folder

		$ cd <app-name>

4. (Optional: Run and stop the new project)

		$ docker run -p 3000:3000 -v "$PWD":/app:cached flgl/rails:5.2.2 
		...
		^C- Gracefully stopping, waiting for requests to finish
		=== puma shutdown: 2019-01-31 19:47:14 +0000 ===
		$ 

## In the project’s directory now

5. Create docker-compose.yml

		$ cp <dockerfiles/rails-5.2.2>/docker-compose.yml.template docker-compose.yml

6. Start via `docker-compose`

		$ docker-compose up

7. Create alias for rails command

		$ alias rails='docker-compose exec -e RAILS_ENV=development <service name in docker-compose.yml> rails'

7. Create stuff

		$ rails generate model Blog title:string
		$ rails generate model Post title:string
		$ rails db:migrate 
		$ rails c
		$ rails server -b 0.0.0.0

