% Enter your code here. Read input from STDIN. Print output to STDOUT
% Your class should be named solution

-module(solution).
-export([main/0]).

write(N,0) ->
        ok;
write(N,Times) ->
        io:format("~w~n",[N]),
        write(N,Times-1).


read(T) ->
        case io:fread("","~d") of
        {ok,[H]} ->
                 read([H|T]),
        _ -> T.
        end.

main() ->
       {ok,[S]} = io:fread("","~d"),
       list:map(fun(N) -> write(N,S) end, list:reverse(read([]))),
       .
