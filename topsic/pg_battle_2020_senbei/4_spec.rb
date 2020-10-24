TEST_CASES = [
<<-EOS,
EOS

<<-EOS,
EOS

<<-EOS,
EOS

<<-EOS,
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
