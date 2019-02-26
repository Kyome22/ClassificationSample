//
// ObjectModel.swift
//
// This file was automatically generated and should not be edited.
//

import CoreML


/// Model Prediction Input Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class ObjectInput : MLFeatureProvider {

    /// X0Y0 as double value
    var X0Y0: Double

    /// X1Y0 as double value
    var X1Y0: Double

    /// X2Y0 as double value
    var X2Y0: Double

    /// X3Y0 as double value
    var X3Y0: Double

    /// X4Y0 as double value
    var X4Y0: Double

    /// X0Y1 as double value
    var X0Y1: Double

    /// X1Y1 as double value
    var X1Y1: Double

    /// X2Y1 as double value
    var X2Y1: Double

    /// X3Y1 as double value
    var X3Y1: Double

    /// X4Y1 as double value
    var X4Y1: Double

    /// X0Y2 as double value
    var X0Y2: Double

    /// X1Y2 as double value
    var X1Y2: Double

    /// X2Y2 as double value
    var X2Y2: Double

    /// X3Y2 as double value
    var X3Y2: Double

    /// X4Y2 as double value
    var X4Y2: Double

    /// X0Y3 as double value
    var X0Y3: Double

    /// X1Y3 as double value
    var X1Y3: Double

    /// X2Y3 as double value
    var X2Y3: Double

    /// X3Y3 as double value
    var X3Y3: Double

    /// X4Y3 as double value
    var X4Y3: Double

    /// X0Y4 as double value
    var X0Y4: Double

    /// X1Y4 as double value
    var X1Y4: Double

    /// X2Y4 as double value
    var X2Y4: Double

    /// X3Y4 as double value
    var X3Y4: Double

    /// X4Y4 as double value
    var X4Y4: Double

    var featureNames: Set<String> {
        get {
            return ["X0Y0", "X1Y0", "X2Y0", "X3Y0", "X4Y0", "X0Y1", "X1Y1", "X2Y1", "X3Y1", "X4Y1", "X0Y2", "X1Y2", "X2Y2", "X3Y2", "X4Y2", "X0Y3", "X1Y3", "X2Y3", "X3Y3", "X4Y3", "X0Y4", "X1Y4", "X2Y4", "X3Y4", "X4Y4"]
        }
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        if (featureName == "X0Y0") {
            return MLFeatureValue(double: X0Y0)
        }
        if (featureName == "X1Y0") {
            return MLFeatureValue(double: X1Y0)
        }
        if (featureName == "X2Y0") {
            return MLFeatureValue(double: X2Y0)
        }
        if (featureName == "X3Y0") {
            return MLFeatureValue(double: X3Y0)
        }
        if (featureName == "X4Y0") {
            return MLFeatureValue(double: X4Y0)
        }
        if (featureName == "X0Y1") {
            return MLFeatureValue(double: X0Y1)
        }
        if (featureName == "X1Y1") {
            return MLFeatureValue(double: X1Y1)
        }
        if (featureName == "X2Y1") {
            return MLFeatureValue(double: X2Y1)
        }
        if (featureName == "X3Y1") {
            return MLFeatureValue(double: X3Y1)
        }
        if (featureName == "X4Y1") {
            return MLFeatureValue(double: X4Y1)
        }
        if (featureName == "X0Y2") {
            return MLFeatureValue(double: X0Y2)
        }
        if (featureName == "X1Y2") {
            return MLFeatureValue(double: X1Y2)
        }
        if (featureName == "X2Y2") {
            return MLFeatureValue(double: X2Y2)
        }
        if (featureName == "X3Y2") {
            return MLFeatureValue(double: X3Y2)
        }
        if (featureName == "X4Y2") {
            return MLFeatureValue(double: X4Y2)
        }
        if (featureName == "X0Y3") {
            return MLFeatureValue(double: X0Y3)
        }
        if (featureName == "X1Y3") {
            return MLFeatureValue(double: X1Y3)
        }
        if (featureName == "X2Y3") {
            return MLFeatureValue(double: X2Y3)
        }
        if (featureName == "X3Y3") {
            return MLFeatureValue(double: X3Y3)
        }
        if (featureName == "X4Y3") {
            return MLFeatureValue(double: X4Y3)
        }
        if (featureName == "X0Y4") {
            return MLFeatureValue(double: X0Y4)
        }
        if (featureName == "X1Y4") {
            return MLFeatureValue(double: X1Y4)
        }
        if (featureName == "X2Y4") {
            return MLFeatureValue(double: X2Y4)
        }
        if (featureName == "X3Y4") {
            return MLFeatureValue(double: X3Y4)
        }
        if (featureName == "X4Y4") {
            return MLFeatureValue(double: X4Y4)
        }
        return nil
    }
    
    init(X0Y0: Double, X1Y0: Double, X2Y0: Double, X3Y0: Double, X4Y0: Double, X0Y1: Double, X1Y1: Double, X2Y1: Double, X3Y1: Double, X4Y1: Double, X0Y2: Double, X1Y2: Double, X2Y2: Double, X3Y2: Double, X4Y2: Double, X0Y3: Double, X1Y3: Double, X2Y3: Double, X3Y3: Double, X4Y3: Double, X0Y4: Double, X1Y4: Double, X2Y4: Double, X3Y4: Double, X4Y4: Double) {
        self.X0Y0 = X0Y0
        self.X1Y0 = X1Y0
        self.X2Y0 = X2Y0
        self.X3Y0 = X3Y0
        self.X4Y0 = X4Y0
        self.X0Y1 = X0Y1
        self.X1Y1 = X1Y1
        self.X2Y1 = X2Y1
        self.X3Y1 = X3Y1
        self.X4Y1 = X4Y1
        self.X0Y2 = X0Y2
        self.X1Y2 = X1Y2
        self.X2Y2 = X2Y2
        self.X3Y2 = X3Y2
        self.X4Y2 = X4Y2
        self.X0Y3 = X0Y3
        self.X1Y3 = X1Y3
        self.X2Y3 = X2Y3
        self.X3Y3 = X3Y3
        self.X4Y3 = X4Y3
        self.X0Y4 = X0Y4
        self.X1Y4 = X1Y4
        self.X2Y4 = X2Y4
        self.X3Y4 = X3Y4
        self.X4Y4 = X4Y4
    }
}

/// Model Prediction Output Type
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class ObjectOutput : MLFeatureProvider {

    /// Source provided by CoreML

    private let provider : MLFeatureProvider


    /// object as string value
    lazy var object: String = {
        [unowned self] in return self.provider.featureValue(for: "object")!.stringValue
    }()

    /// objectProbability as dictionary of strings to doubles
    lazy var objectProbability: [String : Double] = {
        [unowned self] in return self.provider.featureValue(for: "objectProbability")!.dictionaryValue as! [String : Double]
    }()

    var featureNames: Set<String> {
        return self.provider.featureNames
    }
    
    func featureValue(for featureName: String) -> MLFeatureValue? {
        return self.provider.featureValue(for: featureName)
    }

    init(object: String, objectProbability: [String : Double]) {
        self.provider = try! MLDictionaryFeatureProvider(dictionary: ["object" : MLFeatureValue(string: object), "objectProbability" : MLFeatureValue(dictionary: objectProbability as [AnyHashable : NSNumber])])
    }

    init(features: MLFeatureProvider) {
        self.provider = features
    }
}


/// Class for model loading and prediction
@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
class ObjectModel {
    var model: MLModel

    init(contentsOf url: URL) throws {
        self.model = try MLModel(contentsOf: url)
    }

    func prediction(input: ObjectInput) throws -> ObjectOutput {
        return try self.prediction(input: input, options: MLPredictionOptions())
    }

    func prediction(input: ObjectInput, options: MLPredictionOptions) throws -> ObjectOutput {
        let outFeatures = try model.prediction(from: input, options:options)
        return ObjectOutput(features: outFeatures)
    }

    func prediction(X0Y0: Double, X1Y0: Double, X2Y0: Double, X3Y0: Double, X4Y0: Double, X0Y1: Double, X1Y1: Double, X2Y1: Double, X3Y1: Double, X4Y1: Double, X0Y2: Double, X1Y2: Double, X2Y2: Double, X3Y2: Double, X4Y2: Double, X0Y3: Double, X1Y3: Double, X2Y3: Double, X3Y3: Double, X4Y3: Double, X0Y4: Double, X1Y4: Double, X2Y4: Double, X3Y4: Double, X4Y4: Double) throws -> ObjectOutput {
        let input_ = ObjectInput(X0Y0: X0Y0, X1Y0: X1Y0, X2Y0: X2Y0, X3Y0: X3Y0, X4Y0: X4Y0, X0Y1: X0Y1, X1Y1: X1Y1, X2Y1: X2Y1, X3Y1: X3Y1, X4Y1: X4Y1, X0Y2: X0Y2, X1Y2: X1Y2, X2Y2: X2Y2, X3Y2: X3Y2, X4Y2: X4Y2, X0Y3: X0Y3, X1Y3: X1Y3, X2Y3: X2Y3, X3Y3: X3Y3, X4Y3: X4Y3, X0Y4: X0Y4, X1Y4: X1Y4, X2Y4: X2Y4, X3Y4: X3Y4, X4Y4: X4Y4)
        return try self.prediction(input: input_)
    }

    @available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
    func predictions(inputs: [ObjectInput], options: MLPredictionOptions = MLPredictionOptions()) throws -> [ObjectOutput] {
        let batchIn = MLArrayBatchProvider(array: inputs)
        let batchOut = try model.predictions(from: batchIn, options: options)
        var results : [ObjectOutput] = []
        results.reserveCapacity(inputs.count)
        for i in 0..<batchOut.count {
            let outProvider = batchOut.features(at: i)
            let result =  ObjectOutput(features: outProvider)
            results.append(result)
        }
        return results
    }
}
