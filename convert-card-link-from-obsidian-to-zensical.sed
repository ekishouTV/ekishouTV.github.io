/^```cardlink/ {
  N
  N
  N
  N
  N
  N
  N
  s/^```cardlink\nurl: \(.*\)\ntitle: "\(.*\)"\ndescription: "\(.*\)"\nhost: .*\nfavicon: \(.*\)\nimage: \(.*\)\n```/<div class="grid cards" markdown>\
- [\2](\1)\
\
    ---\
\
    ![](\5){: style="height:350px"}\
\
    \3\
\
    ![](\4){: style="height:30px; width:30px"}\
<\/div>/
}
