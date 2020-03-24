-module(solution).
-export([main/0]).

print_hello(N) when N>0 ->
    io:format("Hello World~n"),
    print_hello(N-1);
print_hello(_) ->
    ok.

main() ->
    {N, _} = string:to_integer(string:chomp(io:get_line(""))),

    % Print "Hello World" on a new line 'n' times.
    print_hello(N),

    ok.
