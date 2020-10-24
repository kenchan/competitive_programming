TEST_CASES = [
<<-EOS,
8 8
7 4 3 6
#....#.#
#.##.#.#
#......#
###.##.#
###.##.#
#......#
###.####
########
EOS

<<-EOS,
18
EOS

<<-EOS,
8 8
7 4 3 6
#......#
#.##.#.#
#......#
###.##.#
###.##.#
#......#
###.####
########
EOS

<<-EOS,
-1
EOS

<<-EOS,
8 8
1 1 8 8
....####
....####
....####
....####
####....
####....
####....
####....
EOS

<<-EOS,
-1
EOS
]

TEST_CASES.each_slice(2) do |input, answer|
  describe [input, answer] do
    specify do
      expect {
        system("echo '#{input}' | ruby #{__FILE__.sub('_spec', '')}")
      }.to output(answer).to_stdout_from_any_process
    end
  end
end
