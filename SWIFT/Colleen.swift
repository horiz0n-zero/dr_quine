import Foundation

fileprivate let	src = "import Foundation%3$c%3$cfileprivate let%4$csrc = %2$c%@%2$c%3$c%3$c/*%3$c%4$cprint_source%3$c*/%3$c%3$cfunc%4$c%4$c%4$cprint_source() {%3$c%3$c%4$cprint(String(format: src, src, 34, 10, 9));%3$c}%3$c%3$cfunc%4$c%4$c%4$cmain() {%3$c%4$c/*%3$c%4$c%4$cmain%3$c%4$c*/%3$c%4$cprint_source()%3$c}%3$c%3$cmain()"

/*
	print_source
*/

func			print_source() {

	print(String(format: src, src, 34, 10, 9));
}

func			main() {
	/*
		main
	*/
	print_source()
}

main()
