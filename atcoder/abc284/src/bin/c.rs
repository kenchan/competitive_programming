use proconio::input;

fn main() {
    input! {
        n: usize,
        m: usize,
        uv: [(usize, usize); m],
    }

    if m == 0 {
        println!("{}", n);
        return;
    }

    let mut g: Vec<Vec<usize>> = vec![vec![]; n];

    for (u, v) in uv {
        g[u - 1].push(v - 1);
        g[v - 1].push(u - 1);
    }

    let mut ans = 0;
    let mut visits = vec![false; n];

    for i in 0..n {
        if !visits[i] {
            ans += 1;
            dfs(i, &g, &mut visits);
        }
    }

    println!("{}", ans);
}


fn dfs(n: usize, g: &Vec<Vec<usize>>, visits: &mut Vec<bool>) {
    visits[n] = true;

    for i in g[n].iter() {
        if visits[*i] {
            continue;
        }

        dfs(*i, g, visits);
    }
}
