# Commands used to generate the report
	cd rs-soroban-env
	RUSTFLAGS="-C instrument-coverage" cargo test --tests
	cargo-profdata -- merge default*.profraw -o coverage.profdata
	cargo llvm-cov --html --open
