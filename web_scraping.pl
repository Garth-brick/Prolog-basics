:- use_module(library(http/http_open)).
:- use_module(library(lists)).

% the top-level is enough to do web-scraping

% ?- http_open("https://news.ycombinator.com", S, []),
% load_html(stream(S), DOM, []).

% this doesn't get the article titles I guess
% xpath(DOM, //a(@class="storylink", text), E).