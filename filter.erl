% Enter your code here. Read input from STDIN. Print output to STDOUT
% Your class should be named solution

-module(solution).
-export([main/0]).

write(X,N) when X<N ->
       io:fwrite("~w~n",[X]);
write(X,N) when X>=N ->
       ok.

read(T) ->
       case io:fread("","~d") of
       {ok,[H]} ->
                read([H|T]);
       _ -> T
       end.

main() ->
       {ok,[N]} = io:fread("","~d"),
       lists:map(fun(X) -> write(X,N) end, lists:reverse(read([]))).