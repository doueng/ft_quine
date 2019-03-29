package main

import "fmt"

/*
  comment
*/

func rofl() {}

func main() {
	/*
	  comment
	*/
	rofl()
	str := "package main%[2]c%[2]cimport %[4]cfmt%[4]c%[2]c%[2]c/*%[2]c  comment%[2]c*/%[2]c%[2]cfunc rofl() {}%[2]c%[2]cfunc main() {%[2]c%[3]c/*%[2]c%[3]c  comment%[2]c%[3]c*/%[2]c%[3]crofl()%[2]c%[3]cstr := %[4]c%[1]s%[4]c%[2]c%[3]cfmt.Printf(str, str, 10, 9, 34)%[2]c}%[2]c"
	fmt.Printf(str, str, 10, 9, 34)
}
