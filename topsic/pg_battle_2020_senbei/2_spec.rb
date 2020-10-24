TEST_CASES = [
<<-EOS,
2
EOS

<<-EOS,
0.04
EOS

<<-EOS,
50
EOS

<<-EOS,
0.00000000000000000000000000000000001125899906842624
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
