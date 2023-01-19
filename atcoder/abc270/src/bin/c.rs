use std::collections::{HashMap, HashSet};

use proconio::input;

fn dfs(
    g: &HashMap<usize, Vec<usize>>,
    visits: &mut HashSet<usize>,
    ans: &mut Vec<usize>,
    current: usize,
    goal: usize,
) -> bool {
    visits.insert(current);

    if current == goal {
        ans.push(current);
        return true;
    }

    for next in g.get(&current).unwrap() {
        if visits.contains(next) {
            continue;
        }

        if dfs(g, visits, ans, *next, goal) {
            ans.push(current);
            return true;
        }
    }

    return false;
}

fn main() {
    input! {
        n: usize,
        x: usize,
        y: usize,
        uv: [(usize, usize); n - 1]
    }

    let mut g: HashMap<usize, Vec<usize>> = HashMap::new();

    for (u, v) in uv {
        g.entry(u).or_default().push(v);
        g.entry(v).or_default().push(u);
    }

    let mut ans: Vec<usize> = vec![];
    let mut visits = HashSet::<usize>::new();

    dfs(&g, &mut visits, &mut ans, x, y);

    println!(
        "{}",
        ans.iter()
            .rev()
            .map(|a| a.to_string())
            .collect::<Vec<String>>()
            .join(" ")
    )
}
