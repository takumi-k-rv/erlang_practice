% Enter your code % Enter your code here. Read input from STDIN. Print output to STDOUT
% Your class should be named solution

-module(solution).
-export([main/0]).

write([], C) ->
    ok;
write([H|T], C) when C rem 2==0 ->
    io:fwrite("~w~n", [H]),
    write(T, C+1);
write([H|T], C) when C rem 2==1 ->
    write(T, C+1).

read(T) ->
    case io:fread("", "~d") of
    {ok, [H]} -> 
            read([H | T]);
    _ -> T
    end.

main() ->
    L = lists:reverse(read([])),
    write(L,1).