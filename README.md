# mac-addr
Lightweight and dependency-free **MAC address** type for Rust.  
Supports `no_std`, `serde`, and `alloc` environments.

[![Crates.io](https://img.shields.io/crates/v/mac-addr.svg)](https://crates.io/crates/mac-addr)
[![License](https://img.shields.io/crates/l/mac-addr.svg)](https://github.com/shellrow/mac-addr/blob/main/LICENSE)

## Overview
`mac-addr` provides a minimal [`MacAddr`](https://docs.rs/mac-addr/latest/mac_addr/struct.MacAddr.html)
type representing a **48-bit IEEE EUI-48** hardware address.

It’s designed for portability and low-level use:
- **no_std** compatible  
- Optional `alloc` for string formatting  
- Optional `serde` support for serialization and deserialization  
- Small, efficient, and FFI-safe

## Features
| Feature | Default | Description |
|----------|----------|-------------|
| `std` | ✅ | Use Rust standard library |
| `alloc` | ⬜ | Enable heap allocation for `MacAddr::address()` |
| `serde` | ⬜ | Add `serde::Serialize` / `Deserialize` implementations |
