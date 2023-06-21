watch:
	cargo watch -x check -x test -x run

lint:
	cargo clippy --all-targets --all-features -- -D warnings

format:
	cargo fmt -- --check

audit:
	cargo audit

coverage:
	cargo tarpaulin --ignore-tests

pipeline:
	cargo check && \
	cargo test --all-targets --all-features && \
	cargo clippy --all-targets --all-features -- -D warnings && \
	cargo fmt && \
	cargo tarpaulin --ignore-tests
