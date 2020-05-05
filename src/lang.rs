// Lang items and intrinsics


#[lang = "copy"]
pub trait Copy {}
#[lang = "sized"]
pub trait Sized {}
#[lang = "sync"]
pub unsafe trait Sync {}
#[lang = "freeze"]
pub unsafe trait Freeze {}

extern "rust-intrinsic" {
    pub fn transmute<F, T>(from: F) -> T;
}
