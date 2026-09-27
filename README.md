# calculator app

This is my First Real app building from scratch......
as a part of my flutter course this is an important chapter
to learn about different things.


## App Journey
We will go from scratch to an calculator app,
thats why i created a commit from very beginning so I can track my progress.
its a very small and easy app for experienced developers but it 
would be a bigger milestone for me.
Lets Begin

# Version history
1) Gave it proper icon and name.
2) Gave homescreen another class and called it in main.dart, because of statefull stateless confusion.
3) Finished yey, Added Logic, styling UI and Appbar, popupmenue button.
4) Got a widget structure glitch where the release build showed a blank screen because of an incorrect Expanded/Padding hierarchy.
Fixed it by rearranging the widget structure and making Expanded the direct child of the main Column.
5) Got a DEL button runtime glitch where pressing DEL on an empty input caused the app to crash.
Fixed it by checking whether the input was empty before removing the last character.
6) Got bottom overflow error strange.
7) Updated README hehehe.  