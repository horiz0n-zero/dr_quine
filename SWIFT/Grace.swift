import Foundation

fileprivate let	src = "import Foundation%3$c%3$cfileprivate let%4$csrc = %2$c%@%2$c%3$c%3$cfunc%4$c%4$c%4$cwrite_file() {%3$c%4$clet forma = String(format: src, src, 34, 10, 9)%3$c%3$c%4$cFileManager.default.createFile(atPath: %2$c./Grace_kid.swift%2$c, contents: nil)%3$c%4$ctry! forma.write(to: NSURL(fileURLWithPath: %2$c./Grace_kid.swift%2$c) as URL, atomically: true, encoding: String.Encoding.utf8)%3$c}%3$c%3$cwrite_file()%3$c"

func			write_file() {
	let forma = String(format: src, src, 34, 10, 9)

	FileManager.default.createFile(atPath: "./Grace_kid.swift", contents: nil)
	try! forma.write(to: NSURL(fileURLWithPath: "./Grace_kid.swift") as URL, atomically: true, encoding: String.Encoding.utf8)
}

write_file()
