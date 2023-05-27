build:
	docker build -t botw .

run: 
	docker run -d -p 3000:3000 --name botw --rm botw