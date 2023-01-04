use proconio::input;

fn main() {
    input! {
        n: usize,
        k: usize,
        a: [usize; n],
    }

    let mut ans = vec![];

    for i in a.iter().take(n).skip(k) {
        ans.push(*i)
    }

    ans.resize(a.len(), 0);

    let ans_s = ans.into_iter().map(|i| i.to_string()).collect::<Vec<String>>();

    println!("{}", ans_s.join(" "));
}
