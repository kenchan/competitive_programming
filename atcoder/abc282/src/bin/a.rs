use proconio::input;

fn main() {
    input! {
        k: u8,
    }

    for i in 0..k {
        print!("{}", (b'A' + i) as char);
    }
}
