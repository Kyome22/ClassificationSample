//
//  ViewController.swift
//  ClassificationSample
//
//  Created by Takuto Nakamura on 2019/02/27.
//  Copyright © 2019 Takuto Nakamura. All rights reserved.
//

import Cocoa
import CoreML
import CreateML

public let GRID: Int = 5

class ViewController: NSViewController, DrawViewDelegate {

    @IBOutlet weak var circleButton: NSButton!
    @IBOutlet weak var triangleButton: NSButton!
    @IBOutlet weak var drawView: DrawView!
    @IBOutlet weak var stateLabel: NSTextField!
    
    var samplingObject: String = ""
    var learned: Bool = false
    var model: ObjectModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawView.delegate = self
        stateLabel.stringValue = "Stand By..."
        FileIO.createDirectory()
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func pushCircle(_ sender: Any) {
        samplingObject = "circle"
        stateLabel.stringValue = "Sampling Circle"
    }
    
    @IBAction func pushTriangle(_ sender: Any) {
        samplingObject = "triangle"
        stateLabel.stringValue = "Sampling Triangle"
    }
    
    @IBAction func pushLearn(_ sender: Any) {
        stateLabel.stringValue = "Learning"
        guard let url = FileIO.getCSV(fileName: "sampling.csv") else {
            stateLabel.stringValue = "Faild Learning"
            return
        }
        stateLabel.stringValue = "Learning"
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            if let dataTable = try? MLDataTable(contentsOf: url),
                let classifier = try? MLClassifier(trainingData: dataTable, targetColumn: "object") {
                //  Swift.print(classifier.description.components(separatedBy: "\n").first!)
                let metaData = MLModelMetadata(author: "Author Name",
                                               shortDescription: "Object Distinction",
                                               version: "1.0")
                self.learned = true
                FileIO.saveModel(fileName: "object.mlmodel", classifier, metaData)
                self.model = FileIO.getModel(fileName: "object.mlmodel")
                self.stateLabel.stringValue = "Learned"
            } else {
                self.stateLabel.stringValue = "Faild Create DataTable"
            }
        }
    }
    
    @IBAction func pushReset(_ sender: Any) {
        FileIO.remove(fileName: "sampling.csv")
        FileIO.remove(fileName: "object.mlmodel")
        samplingObject = ""
        circleButton.tag = 0
        circleButton.title = "○ : \(circleButton.tag)"
        triangleButton.tag = 0
        triangleButton.title = "△ : \(triangleButton.tag)"
        stateLabel.stringValue = "Stand By..."
        learned = false
    }
    
    func finishedStroke(_ data: [Double]) {
        if learned {
            if model == nil { return }
            if let output: ObjectOutput = try? model!.prediction(X0Y0: data[0],  X1Y0: data[1],  X2Y0: data[2],  X3Y0: data[3],  X4Y0: data[4],
                                                                 X0Y1: data[5],  X1Y1: data[6],  X2Y1: data[7],  X3Y1: data[8],  X4Y1: data[9],
                                                                 X0Y2: data[10], X1Y2: data[11], X2Y2: data[12], X3Y2: data[13], X4Y2: data[14],
                                                                 X0Y3: data[15], X1Y3: data[16], X2Y3: data[17], X3Y3: data[18], X4Y3: data[19],
                                                                 X0Y4: data[20], X1Y4: data[21], X2Y4: data[22], X3Y4: data[23], X4Y4: data[24]) {
                let probability = round(1000 * output.objectProbability[output.object]!) / 10.0
                self.stateLabel.stringValue = output.object + ": \(probability)%"
            }
        } else {
            if samplingObject.count == 0 {
                return
            }
            let csvData: String = data.reduce(samplingObject, { (res, p) -> String in
                return res + "," + String(p)
            }) + "\n"
            FileIO.saveCSV(fileName: "sampling.csv", text: csvData)
            if samplingObject == "circle" {
                circleButton.tag += 1
                circleButton.title = "○ : \(circleButton.tag)"
            } else {
                triangleButton.tag += 1
                triangleButton.title = "△ : \(triangleButton.tag)"
            }
        }
    }
    
}

