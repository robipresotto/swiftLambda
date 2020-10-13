import ArgumentParser
import Foundation

struct SwiftLambda: ParsableCommand {

  @Argument(help: "Project name: ")
  var projectName: String
  
  @Option(name: .shortAndLong, help: "AWS profile name: ")
  var awsProfile: String = "default"

  var fileManager: FileManager { .default }
  
  mutating func run() throws {
    
    let _ = try print(Shell.command(
      """
        git clone https://github.com/robipresotto/swiftLambdaTemplate && \
        mv swiftLambdaTemplate \(projectName) && \
        cd \(projectName) && \
        rm -rf .git && \
        git init && \
        git add . && \
        git commit -m "initial commit"
      """
    ))
    
    let path = fileManager.currentDirectoryPath
    if fileManager.fileExists(atPath: path + "/testing-shell-folder") {
      print("yep")
    } else {
      print("nope")
    }
    
    
//    print(Shell.command("mkdir testing-shell-folder"))
    
  }
  
}

SwiftLambda.main()
