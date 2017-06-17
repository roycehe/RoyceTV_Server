// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "foo.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public struct Bar { }

public extension Bar {
  public struct FooRoot {
    public static let `default` = FooRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }

  final public class Foo : GeneratedMessage {

    public static func == (lhs: Bar.Foo, rhs: Bar.Foo) -> Bool {
      if (lhs === rhs) {
        return true
      }
      var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
      fieldCheck = fieldCheck && (lhs.hasHello == rhs.hasHello) && (!lhs.hasHello || lhs.hello == rhs.hello)
      fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
      return fieldCheck
    }

    public fileprivate(set) var hello:String = ""
    public fileprivate(set) var hasHello:Bool = false

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasHello {
        try codedOutputStream.writeString(fieldNumber: 1, value:hello)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasHello {
        serialize_size += hello.computeStringSize(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> Bar.Foo.Builder {
      return Bar.Foo.classBuilder() as! Bar.Foo.Builder
    }
    public func getBuilder() -> Bar.Foo.Builder {
      return classBuilder() as! Bar.Foo.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Bar.Foo.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Bar.Foo.Builder()
    }
    public func toBuilder() throws -> Bar.Foo.Builder {
      return try Bar.Foo.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Bar.Foo) throws -> Bar.Foo.Builder {
      return try Bar.Foo.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
      if hasHello {
        jsonMap["hello"] = hello
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Bar.Foo {
      return try Bar.Foo.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Bar.Foo {
      return try Bar.Foo.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasHello {
        output += "\(indent) hello: \(hello) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasHello {
               hashCode = (hashCode &* 31) &+ hello.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Bar.Foo"
    }
    override public func className() -> String {
        return "Bar.Foo"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      fileprivate var builderResult:Bar.Foo = Bar.Foo()
      public func getMessage() -> Bar.Foo {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasHello:Bool {
           get {
                return builderResult.hasHello
           }
      }
      public var hello:String {
           get {
                return builderResult.hello
           }
           set (value) {
               builderResult.hasHello = true
               builderResult.hello = value
           }
      }
      @discardableResult
      public func setHello(_ value:String) -> Bar.Foo.Builder {
        self.hello = value
        return self
      }
      @discardableResult
      public func clearHello() -> Bar.Foo.Builder{
           builderResult.hasHello = false
           builderResult.hello = ""
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      @discardableResult
      override public func clear() -> Bar.Foo.Builder {
        builderResult = Bar.Foo()
        return self
      }
      override public func clone() throws -> Bar.Foo.Builder {
        return try Bar.Foo.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> Bar.Foo {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Bar.Foo {
        let returnMe:Bar.Foo = builderResult
        return returnMe
      }
      @discardableResult
      public func mergeFrom(other:Bar.Foo) throws -> Bar.Foo.Builder {
        if other == Bar.Foo() {
         return self
        }
        if other.hasHello {
             hello = other.hello
        }
        try merge(unknownField: other.unknownFields)
        return self
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Bar.Foo.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      @discardableResult
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            hello = try codedInputStream.readString()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Bar.Foo.Builder {
        let resultDecodedBuilder = Bar.Foo.Builder()
        if let jsonValueHello = jsonMap["hello"] as? String {
          resultDecodedBuilder.hello = jsonValueHello
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> Bar.Foo.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try Bar.Foo.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension Bar.Foo: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Bar.Foo> {
    var mergedArray = Array<Bar.Foo>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> Bar.Foo? {
    return try Bar.Foo.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> Bar.Foo {
    return try Bar.Foo.Builder().mergeFrom(data: data, extensionRegistry:Bar.FooRoot.default.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo {
    return try Bar.Foo.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> Bar.Foo {
    return try Bar.Foo.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo {
    return try Bar.Foo.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> Bar.Foo {
    return try Bar.Foo.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Bar.Foo {
    return try Bar.Foo.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
