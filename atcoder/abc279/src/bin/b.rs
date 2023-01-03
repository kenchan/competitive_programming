use proconio::input;

fn main() {
    input! {
        s: String,
        t: String
    }

    if t.len() > s.len() {
        println!("No");
        return;
    }

    for i in 0..=(s.len() - t.len()) {
        if s[i..=(i + t.len() - 1)] == t[..] {
            println!("Yes");
            return;
        }
    }

    println!("No");
}
