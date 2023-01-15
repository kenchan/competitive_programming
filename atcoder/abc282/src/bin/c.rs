use proconio::input;

fn main() {
    input! {
        _n: usize,
        s: String,
    }

    let mut b = false;

    for mut c in s.chars() {
        match c {
            ',' => {
                if !b {
                    c = '.';
                }
            },
            '"' => {
                b = !b
            },
            _ => {}
        }

        print!("{}", c);
    }

    println!();

}
