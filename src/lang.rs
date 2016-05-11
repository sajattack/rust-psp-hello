// Lang items and intrinsics


#[lang = "copy"]
pub trait Copy {}
#[lang = "sized"]
pub trait Sized {}
#[lang = "sync"]
pub unsafe trait Sync {}

extern "rust-intrinsic" {
    pub fn transmute<F, T>(from: F) -> T;
}
