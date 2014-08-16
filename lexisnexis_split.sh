mkdir decision
csplit -f tm-decision- -n 4 Trayvon_Martin_Decision_Combined_Papers2014-08-15_22-08.HTML '/</DOC>/'1 {*}
# Last file is just the bottom HTML tags, no content
# You can use a command like `ls -lr decision |head` to determine this file
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

mkdir MichaelBrown_1_1
csplit -f MichaelBrown_1_1/mb_1_1- -n 4 MichaelBrown_1_1.HTML '/</DOC>/'1 {*}
rm MichaelBrown_1_1/mb_1_1-0100
python ../lexisnexis.py MichaelBrown_1_1 c8

mkdir MichaelBrown_1_2
csplit -f MichaelBrown_1_2/mb_1_2- -n 4 MichaelBrown_1_2.HTML '/</DOC>/'1 {*}
rm MichaelBrown_1_2/mb_1_2-0100
python ../lexisnexis.py MichaelBrown_1_2 c8

mkdir MichaelBrown_1_3
csplit -f MichaelBrown_1_3/mb_1_3- -n 4 MichaelBrown_1_3.HTML '/</DOC>/'1 {*}
rm MichaelBrown_1_3/mb_1_3-0100
python ../lexisnexis.py MichaelBrown_1_3 c8

mkdir MichaelBrown_1_4
csplit -f MichaelBrown_1_4/mb_1_4- -n 4 MichaelBrown_1_4.HTML '/</DOC>/'1 {*}
rm MichaelBrown_1_4/mb_1_4-0050
python ../lexisnexis.py MichaelBrown_1_4 c8

FILEPRE=OscarGrant_1_1
mkdir $FILEPRE
csplit -f $FILEPRE/$FILEPRE- -n 4 $FILEPRE.HTML '/</DOC>/'1 {*}
REMOVE=`ls -r $FILEPRE|head -n 1`
rm $FILEPRE/$REMOVE
#python ../lexisnexis.py $FILEPRE c22 <-- pclass determined manually
