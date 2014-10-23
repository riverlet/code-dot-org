---
title: Bedankt dat je je hebt opgegeven om een Uur Code te organiseren!
layout: wide
---
<%
  facebook = {:u=>"http://#{request.host}/us"}

  twitter = {:url=>"http://hourofcode.com", :related=>'codeorg', :hashtags=>'', :text=>hoc_s(:twitter_default_text)}
  twitter[:hashtags] = 'HourOfCode' unless hoc_s(:twitter_default_text).include? '#HourOfCode'
%>

# Bedankt dat je je hebt opgegeven om een Uur Code te organiseren!

**IEDERE** Uur Code-organisator krijgt 10GB Dropbox-ruimte of $10 aan Skype-credit als bedankje. [Details](/prizes)

<% if @country == 'us' %>

Zorg dat je [hele school meedoet](/us/prizes) om kans te maken op grote prijzen voor je hele school.

<% end %>

## 1. Zegt het voort

Vertel je vrienden over het Uur Code, #HourOfCode.

<%= view :share_buttons, facebook:facebook, twitter:twitter %>

<% if @country == 'us' %>

## 2. Vraag je hele school een Uur Code aan te bieden

[Stuur deze mail](/resources#email) of [geef deze handout aan je rector](/files/schools-handout.pdf). Is je school aan boord, [ding dan mee naar $10.000 aan technologie voor je school](/prizes) en daag andere scholen in je district uit ook mee te doen.

<% else %>

## 2. Vraag je hele school een Uur Code aan te bieden

[Stuur deze mail](/resources#email) of geef [deze handout](/files/schools-handout.pdf) aan je rector.

<% end %>

## 3. Make a generous donation

[Donate to our crowdfunding campaign](http://code.org/donate). To teach 100 million children, we need your support. We just launched what could be the [largest education crowdfunding campaign](http://code.org/donate) in history. Every dollar will be matched by major Code.org [donors](http://code.org/about/donors), doubling your impact.

## 4. Ask your employer to get involved

[Send this email](/resources#email) to your manager, or the CEO. Or [give them this handout](/resources/hoc-one-pager.pdf).

## 5. Promote Hour of Code within your community

Werk samen met een vereniging — scouting, kerk, universiteit of vakbond. Of organiseer een Uur Code "buurtfeest" voor je wijk.

## 6. Ask a local elected official to support the Hour of Code

[Send this email](/resources#politicians) to your mayor, city council, or school board. Or [give them this handout](/resources/hoc-one-pager.pdf) and invite them to visit your school.

<%= view 'popup_window.js' %>