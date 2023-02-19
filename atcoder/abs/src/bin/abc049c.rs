use proconio::input;
use regex::Regex;

fn main() {
    input! {
        mut s: String,
    }

    let re = Regex::new(r"(dream|dreamer|erase|eraser)$").unwrap();

    loop {
        if s.len() == 0 {
            println!("YES");
            break;
        }

        let m = re.replace(&s, "");

        if m.len() == s.len() {
            println!("NO");
            break
        }

        s = m.to_string();
    }

}
