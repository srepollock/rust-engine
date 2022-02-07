install_all: install_devserver install_webassembly_target install_watch
install_devserver:
	cargo install devserver
install_webassembly_target:
	rustup target add wasm32-unknown-unknown
build_webassembly:
	cargo build --example game --target wasm32-unknown-unknown
install_watch:
	cargo install cargo-watch
serve:
	devserver
watch:
	cargo watch -x 'build --example game --target wasm32-unknown-unknown'