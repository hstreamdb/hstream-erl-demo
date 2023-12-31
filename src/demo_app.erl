%%%-------------------------------------------------------------------
%% @doc demo public API
%% @end
%%%-------------------------------------------------------------------

-module(demo_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    demo:start(),
    demo_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
