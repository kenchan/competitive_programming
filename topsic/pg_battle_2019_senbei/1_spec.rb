TEST_CASES = [
<<-EOS,
3 10
13 8 20
EOS

<<-EOS,
13
EOS

<<-EOS,
10 314
159 265 358 979 323 846 264 338 327 950
EOS

<<-EOS,
1923
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
