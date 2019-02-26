//
//  FileIO.swift
//  ClassificationSample
//
//  Created by Takuto Nakamura on 2019/02/27.
//  Copyright © 2019 Takuto Nakamura. All rights reserved.
//

import Foundation
import CreateML
import CoreML

class FileIO {
    
    static func createDirectory() {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let url = dir.appendingPathComponent("ClassificationSample")
        if !FileManager.default.fileExists(atPath: url.path) {
            try? FileManager.default.createDirectory(at: url, withIntermediateDirectories: true, attributes: nil)
        }
    }
    
    static func saveCSV(fileName: String, text: String) {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let url = dir.appendingPathComponent("ClassificationSample/" + fileName)
        if FileManager.default.fileExists(atPath: url.path) {
            if let handle = try? FileHandle(forWritingTo: url) {
                handle.seekToEndOfFile()
                handle.write(text.data(using: String.Encoding.utf8)!)
            }
        } else {
            var header: String = "object"
            for i in (0 ..< GRID * GRID) {
                header += ",X" + String(i % GRID) + "Y" + String(i / GRID)
            }
            header += "\n"
            do {
                try (header + text).write(to: url, atomically: true, encoding: String.Encoding.utf8)
            } catch {
                Swift.print(error)
            }
        }
    }
    
    static func remove(fileName: String) {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let url = dir.appendingPathComponent("ClassificationSample/" + fileName)
        if FileManager.default.fileExists(atPath: url.path) {
            try? FileManager.default.removeItem(at: url)
        }
    }
    
    static func getCSV(fileName: String) -> URL? {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let url = dir.appendingPathComponent("ClassificationSample/" + fileName)
        if FileManager.default.fileExists(atPath: url.path) {
            return url
        }
        return nil
    }
    
    static func saveModel(fileName: String, _ classifier: MLClassifier, _ metaData: MLModelMetadata) {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let url = dir.appendingPathComponent("ClassificationSample/" + fileName)
        try? classifier.write(to: url, metadata: metaData)
    }
    
    static func getModel(fileName: String) -> ObjectModel? {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let url = dir.appendingPathComponent("ClassificationSample/" + fileName)
        if let compiledUrl = try? MLModel.compileModel(at: url), let model = try? ObjectModel(contentsOf: compiledUrl) {
            return model
        }
        return nil
    }
    
}

