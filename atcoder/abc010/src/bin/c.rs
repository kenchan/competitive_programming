use proconio::input;

fn main() {
    input! {
        xa: f64,
        ya: f64,
        xb: f64,
        yb: f64,
        t: f64,
        v: f64,
        n: usize,
    }

    for _ in 0..n {
        input! {
            x: f64,
            y: f64,
        }

        let d1 = ((xa - x).powf(2.0) + (ya - y).powf(2.0)).sqrt();
        let d2 = ((xb - x).powf(2.0) + (yb - y).powf(2.0)).sqrt();

        if d1 + d2 <= t * v {
            println!("YES");
            return;
        }
    }

    println!("NO");
}
