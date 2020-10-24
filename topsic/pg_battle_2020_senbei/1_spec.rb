TEST_CASES = [
<<-EOS,
4
AC
WA
WA
-
EOS

<<-EOS,
15
EOS

<<-EOS,
5
AC
AC
AC
AC
AC
EOS

<<-EOS,
0
EOS

<<-EOS,
10
WA
AC
WA
AC
-
AC
AC
AC
WA
AC
EOS

<<-EOS,
20
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
