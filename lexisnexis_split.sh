mkdir decision
csplit -f tm-decision- -n 4 Trayvon_Martin_Decision_Combined_Papers2014-08-15_22-08.HTML '/</DOC>/'1 {*}
# Last file is just the bottom HTML tags, no content
rm decision/tm-decision-0500

mkdir trial1
csplit -f trial1/tm-trial1- -n 4 Trayvon_Martin_Trial1_Combined_Papers2014-08-15_21-59.HTML '/</DOC>/'1 {*}
rm trial1/tm-trial1-0500

mkdir trial2
csplit -f trial2/tm-trial2- -n 4 Trayvon_Martin_Trial2_Papers2014-08-15_22-01.HTML '/</DOC>/'1 {*}
rm trial2/tm-trial2-0500

mkdir stories
csplit -f stories/tm-stories- -n 4 Trayvon_Stories1_Combined_Papers2014-08-15_21-51.HTML '/</DOC>/'1 {*}
rm stories/tm-stories-0400


mkdir EricGarner_1_1
csplit -f EricGarner_1_1/eg_1_1- -n 4 EricGarner_1_1.HTML '/</DOC>/'1 {*}
rm EricGarner_1_1/eg_1_1-0168
