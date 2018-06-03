NAME  := io-benchmark
IMAGE := akaimo/io-benchmark

run:
	docker run -d -it -v /tmp:/iotest/work --name $(NAME) $(IMAGE)

exec:
	docker exec -it $(NAME) sh

remove:
	docker rm -f $(NAME)
