var sans1, sans2, sans3 : string
var inum : int
sans1 := "hi"
sans2 := "welcome"
sans3 := "nice to meet you"
randint (inum, 1, 3)
case inum of
    label 1 :
	put sans1
    label 2 :
	put sans2
    label 3 :
	put sans3
end case
