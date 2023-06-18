# Rust: 0 to prod

My own repo of the zero to production book: [zero2prod](https://www.zero2prod.com/index.html)

## Initial setup

### ZLD

* Use zld and create `.cargo/config.toml` with the following content:

`brew install llvm`

```toml
[target.x86_64-apple-darwin]
rustflags = ["-C", "link-arg=-fuse-ld=/usr/local/bin/zld"]

[target.aarch64-apple-darwin]
rustflags = ["-C", "link-arg=-fuse-ld=/usr/local/bin/zld"]
```

### Cargo watch

* Install cargo watch: `cargo install cargo-watch`
* Run `cargo watch -x check -x test -x run`
