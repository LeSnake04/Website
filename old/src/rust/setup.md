{{#template ../header.md}}

# Rust Setup

## 1. Rustup

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## 2. Nightly toolchain

```bash
rustup default nightly
```

## 3. rust-analyzer

```
rustup component add rust-analyzer
```

## 4. Mold

### Install package

- Arch: `sudo pacman -Sy mold`
- Fedora: `sudo dnf install mold`

### .cargo/config.toml

```toml
[target.x86_64-unknown-linux-gnu]
linker = "clang"
rustflags = ["-C", "link-arg=-fuse-ld=/usr/bin/mold"]
```

## 5. cargo-expand

Cargo expand is required for rust-analyzer to provide lints when using macros

```bash
cargo install cargo-expand
```

{{#template ../footer.md}}
