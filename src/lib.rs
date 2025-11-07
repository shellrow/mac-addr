#![cfg_attr(not(feature = "std"), no_std)]

#[cfg(all(not(feature = "std"), feature = "alloc"))]
extern crate alloc;

#[cfg(feature = "serde")]
extern crate serde;

mod addr; // EUI-48
mod addr8;
mod error; // EUI-64

pub use addr::MacAddr;
pub use addr8::MacAddr8;
pub use error::ParseMacAddrError;
