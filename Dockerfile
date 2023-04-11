from golang

run apt update && apt upgrade -y && apt install -y libc6

copy . .

cmd make build_no_libc

expose 8080

cmd ["./apiserver"]