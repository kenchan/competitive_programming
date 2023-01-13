use proconio::input;

fn main() {
    input! {
        n: usize,
        _m: usize,
        s: [String; n],
    }

    let mut ans = 0;

    for i in 0..n {
        for j in (i + 1)..n {
            let str1 = &s[i];
            let str2 = &s[j];

            if str1
                .chars()
                .zip(str2.chars())
                .all(|(c1, c2)| c1 == 'o' || c2 == 'o')
            {
                ans += 1;
            }
        }
    }

    println!("{}", ans);
}
