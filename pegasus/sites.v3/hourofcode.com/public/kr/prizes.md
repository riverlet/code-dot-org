

# Hour of Code - 이벤트 행사 조직자를 위한 상품들

## 모든 이벤트 행사 조직자들은 상품 코드를 받게 됩니다.

학생들을 위한 Hour of Code 행사를 운영하는 모든 선생님들은 10GB의 Dropbox 저장공간이나 $10 상당의 Skype 크레딧을 상품으로 받게 됩니다.

<% if @country == 'uk' %>

## 행운의 학급들은 유명 초청 인사와 비디오 채팅을 할 수 있는 기회를 얻게 됩니다.

행운을 얻은 20개의 학급들은 2014.12.08~14일 까지의 Hour of Code 행 기간에 비디오 채팅에 참여하게 됩니다. 학생들은 세계적으로 유명한 IT 기업의 리더들에게 질문하거나 채팅하게 될 것입니다. 빌게이츠, 트위터 창시자 잭 돌시,구글의 수잔 보이치키, 벨브의 게이브 뉴웰과 이루어졌던 [작년 비디오 채팅](http://www.youtube.com/playlist?list=PLzdnOPI1iJNckJ81gRpJe5mR7imAHDl9a)을 살펴보세요.

<% end %>

<% if @country == 'us' %>

## 96 lucky classrooms win a video chat with a guest speaker!

96 lucky classrooms will be invited to join a video chat to celebrate the Hour of Code during December 8-14. 학생들은 세계적으로 유명한 IT 기업의 리더들에게 질문하거나 채팅하게 될 것입니다. 빌게이츠, 트위터 창시자 잭 돌시,구글의 수잔 보이치키, 벨브의 게이브 뉴웰과 이루어졌던 [작년 비디오 채팅](http://www.youtube.com/playlist?list=PLzdnOPI1iJNckJ81gRpJe5mR7imAHDl9a)을 살펴보세요.

Any classroom (public or private) within the U.S. or Canada is eligible to win this prize. Your whole school does not need to apply.

## 51 Lucky schools win a class-set of laptops (or $10,000 for other technology)

One lucky school in ***every*** U.S. state (+ Washington D.C.) will win $10,000 worth of technology. Organize the Hour of Code for every student in your school to qualify. Fill out the form below to apply.

## 하드웨어 상품 지원 양식:

If you’ve signed up your entire school to participate in the Hour of Code, enter to win a class-set of laptops (or $10,000 for other technology) for your school! Only one teacher needs to apply for your entire school.

<%= view :hardware_prizes_form %>

<what are your odds of winning?>

<see a list of all schools signed up for the hour code in your state. one public k-12 school every u.s. state will win class-set laptops.>

<% end %>

## 상품관련 설명

Check out [Terms and Conditions](<%= hoc_uri('/prizes-terms') %>) or visit our forum to see [FAQs](http://support.code.org) and ask your questions.

<% if @country == 'us' %>

# Frequently Asked Questions

## Does your whole school have to enter to win the $10,000 in hardware?

Yes. Your whole school has to participate to be eligible for the prize but only one person needs to register and submit the Hardware Prize application form [here](<%= hoc_uri('/prizes') %>).

## Does your whole school have to enter to win a the tech chat?

Any classroom (public or private school) is eligible to win this prize. Your whole school need not apply.

## Can non-public schools win the video chat prize?

Yes! Private and independent schools are eligible along with public schools to win the video chat prizes.

## Can non-US schools win the video chat prize?

No, unfortunately, because of logistics we are unable to offer the video chat prize to schools outside of the U.S. and Canada. All international organizers **are** eligible to receive Dropbox space or Skype credit.

## Why is the $10,000 hardware prize only available to public schools?

We would love to help teachers in public and private schools alike, but at this time, it comes down to logistics. We have partnered with [DonorsChoose.org](http://donorschoose.org) to administer classroom funding prizes, which only works with public, US K-12 schools. According to DonorsChoose.org, the organization is better able to access consistent and accurate data that's available for public schools.

## I’m outside the United States. Can I qualify for prizes?

Due to a small full-time staff, Code.org is unable to handle the logistics of administering international prizes. Because of this people outside the US are unable to qualify for prizes.

## When is the deadline to apply for the hardware prize?

To qualify, your entire school must register for the Hour of Code as well as complete the [Hardware Application form](<%= hoc_uri('/prizes') %>) by November 14, 2014. One school in every U.S. state will receive a class-set of computers. Code.org will select and notify winners via email by December 1, 2014.

## When is the deadline to be eligible to win a tech chat?

To qualify, you must register your classroom for the Hour of Code by November 14, 2014. Classrooms will win a video chat with a celebrity. Code.org will select and notify winners via email by December 1, 2014.

## When will I be notified if my school or classroom wins a prize?

To qualify, your entire school must register for the Hour of Code as well as complete the [Hardware Application form](<%= hoc_uri('/prizes') %>) by November 14, 2014. Code.org will select and notify winners via email by December 1, 2014.

## If my whole school can’t do the Hour of Code during Computer Science Education Week (Dec. 8-14), can I still qualify for prizes?

Yes, just be sure to submit a logistics plan that outlines how your whole school is participating over a reasonable length of time and register for the Hour of Code by November 14th.

<% end %>