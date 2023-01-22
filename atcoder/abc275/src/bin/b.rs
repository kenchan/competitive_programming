use proconio::input;

fn main() {
    input! {
        a: isize,
        b: isize,
        c: isize,
        d: isize,
        e: isize,
        f: isize,
    }

    const D: isize = 998244353;

    let mut x = ((a % D) * (b % D)) % D;
    x = (x * (c % D)) % D;
    let mut y = ((d % D) * (e % D)) % D;
    y = (y * (f % D)) % D;

    let ans = x - y;

    if ans < 0 {
        println!("{}", ans + D);
    } else {
        println!("{}", ans);
    }

}
