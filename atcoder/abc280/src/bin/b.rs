use proconio::input;

fn main() {
    input! {
            n: i32,
            s: [i64; n]
    };

    let mut ans: Vec<i64> = vec![];
    let mut prev: i64 = 0;

    for i in s {
        ans.push(i - prev);
        prev = i
    }

    println!("{}", ans.iter().map(|i| i.to_string()).collect::<Vec<_>>().join(" "));

}
