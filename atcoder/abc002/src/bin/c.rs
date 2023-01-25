use proconio::input;

fn main() {
    input! {
        x1: f64,
        y1: f64,
        x2: f64,
        y2: f64,
        x3: f64,
        y3: f64,
    }

    println!(
        "{}",
        (((x1 - x3) * (y2 - y3)) - ((x2 - x3) * (y1 - y3))).abs() / 2.0
    );
}
