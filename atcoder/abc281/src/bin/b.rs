use proconio::input;
use regex::Regex;

fn main() {
    input! {
        s: String,
    }

    let re = Regex::new("^[A-Z][1-9][0-9]{5}[A-Z]$").unwrap();

    if re.is_match(&s) {
        println!("Yes");
    } else {
        println!("No");
    }
}
