use std::io;

fn main() {
    let mut buf = String::new();

    io::stdin().read_line(&mut buf).ok();

    let chars: Vec<usize> = buf.trim().split_whitespace().map(|s| s.parse().unwrap()).collect();

    if chars[0] == chars[1] {
        println!("{}", chars[2]);
    } else if chars[1] == chars[2] {
        println!("{}", chars[0]);
    } else if chars[0] == chars[2] {
        println!("{}", chars[1]);
    } else {
        println!("0");
    }
}
