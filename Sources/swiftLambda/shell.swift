//
//  Shell.swift
//  
//
//  Created by Robinson Presotto on 12/10/2020.
//

import Foundation

final class Shell {
  static func command(_ command: String) throws -> String {
    let task = Process()
    let pipe = Pipe()

    task.standardOutput = pipe
    task.arguments = ["-c", command]
    task.launchPath = "/bin/bash"
    task.launch()

    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)!

    return output
  }
}
