import Foundation

fileprivate let	i = 5
fileprivate let src = "import Foundation%3$c%3$cfileprivate let%4$ci = %5$d%3$cfileprivate let src = %2$c%@%2$c%3$c%3$cfunc%4$c%4$c%4$ccompile(name: String, swiftname: String) {%3$c%4$clet task = Process()%3$c%3$c%4$ctask.launchPath = %2$c/usr/bin/swiftc%2$c%3$c%4$ctask.arguments = [swiftname, %2$c-o%2$c, name]%3$c%4$ctask.launch()%3$c%4$ctask.waitUntilExit()%3$c}%3$c%3$cfunc%4$c%4$c%4$claunch(exe: String) {%3$c%4$clet task = Process()%3$c%3$c%4$ctask.launchPath = exe%3$c%4$ctask.arguments = []%3$c%4$ctask.launch()%3$c%4$ctask.waitUntilExit()%3$c}%3$c%3$cfunc%4$c%4$c%4$cmain() {%3$c%4$clet name = String(format: %2$cSully_%%d%2$c, i)%3$c%4$clet swiftname = String(format: %2$c./Sully_%%d.swift%2$c, i)%3$c%4$clet format = String(format: src, src, 34, 10, 9, i - 1)%3$c%3$c%4$cFileManager.default.createFile(atPath: swiftname, contents: nil)%3$c%4$ctry! format.write(to: NSURL(fileURLWithPath: swiftname) as URL, atomically: true, encoding: String.Encoding.utf8)%3$c%4$cif i <= 0 {%3$c%4$c%4$creturn%3$c%4$c}%3$c%4$ccompile(name: name, swiftname: swiftname)%3$c%4$claunch(exe: name)%3$c}%3$c%3$cmain()%3$c"

func			compile(name: String, swiftname: String) {
	let task = Process()

	task.launchPath = "/usr/bin/swiftc"
	task.arguments = [swiftname, "-o", name]
	task.launch()
	task.waitUntilExit()
}

func			launch(exe: String) {
	let task = Process()

	task.launchPath = exe
	task.arguments = []
	task.launch()
	task.waitUntilExit()
}

func			main() {
	let name = String(format: "Sully_%d", i)
	let swiftname = String(format: "./Sully_%d.swift", i)
	let format = String(format: src, src, 34, 10, 9, i - 1)

	FileManager.default.createFile(atPath: swiftname, contents: nil)
	try! format.write(to: NSURL(fileURLWithPath: swiftname) as URL, atomically: true, encoding: String.Encoding.utf8)
	if i <= 0 {
		return
	}
	compile(name: name, swiftname: swiftname)
	launch(exe: name)
}

main()
