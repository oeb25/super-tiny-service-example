# Super tiny service example

## Requirements

- Docker & docker-compose
- Golang
- [Goat](https://github.com/yosssi/goat) - for live reloading of services
- Rust

## Building and Running

To get live reloading on all services, use `goat`

```bash
goat
```

To build specific services use the provided build scripts like so

```bash
./build-go users
```

To build for release append `release` to previous command like so

```bash
./build-go users release
```

To build Rust services the `x86_64-unknown-linux-gnu` target,
which can easily be done with [rustup](https://rustup.rs/) like so

```bash
rustup target add x86_64-unknown-linux-gnu
```

# Licence

MIT or whatever
