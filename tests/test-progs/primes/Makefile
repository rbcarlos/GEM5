all: hello64-static hello64-dynamic hello32-static

hello64-static: primes.c dockcross-x64
	./dockcross-x64 bash -c '$$CC primes.c -o primes64-static -static'

hello64-dynamic: primes.c dockcross-x64
	./dockcross-x64 bash -c '$$CC primes.c -o primes64-dynamic'

hello32-static: primes.c dockcross-x86
	./dockcross-x86 bash -c '$$CC primes.c -o primes32-static -static'

dockcross-x64:
	docker run --rm dockcross/linux-x64 > ./dockcross-x64
	chmod +x ./dockcross-x64

dockcross-x86:
	docker run --rm dockcross/linux-x86 > ./dockcross-x86
	chmod +x ./dockcross-x86

clean:
	rm -f dockcross-* primes64-static primes64-dynamic primes32-static
