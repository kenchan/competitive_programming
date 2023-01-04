use proconio::input;

fn rev(h: usize, m: usize) -> (usize, usize) {
    (h / 10 * 10 + m / 10, h % 10 * 10 + m % 10)
}

fn main() {
    input! {
        mut h: usize,
        mut m: usize,
    }

    loop {
        let (rev_h, rev_m) = rev(h, m);
        if rev_h < 24 && rev_m < 60 {
            println!("{} {}", h, m);
            break;
        }
        m += 1;
        if m == 60 {
            h += 1;
            m = 0;
        }

        if h == 24 {
            h = 0;
        }
    }
}
