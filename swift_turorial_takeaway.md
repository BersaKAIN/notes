# Swift Tutorials Take-aways

## String
Swift `String` is an array of characters.
Swift character is made of s single extended grapheme cluster which is made of a sequence of  one more several unicode scalar.
Unicode scalar is a 21-bit number from `U+0000` to `U+D7FF` inclusive and `U+E000` to `U+10FFF` inclusive.
Swift compare two strings using a character by character canonical equivalence comparison. The canonical equivalence comparison will compare the linguistic meaning and the appearance of two character.

## Array
Arrays in swift are of the same type.
Arrays can be initialized as `Array<type>()` or the preferred shorthanded version `[Type]()`.
Variable array are mutable and constant array are immutable.
The `count` method will access the number of the array.
Array concatenation is performed by `+` operator.
Elements of an array can be accessed by the index and also the index range like `arrayInstance[4..6]`

## Dictionary

## Optional

### Optional Binding

Swift 1.2 introduce where keyword. It can be used in optional binding to make code more concise
```
// Before Swift 1.2
if let data = widget.dataStream {
  if data.isValid {
    if let source = sourceIP() {
      if let dest = destIP() {
        // do something
      }
    }
  }
}

// After 1.2
if let data= widget.dataStream where data.isValid, let source = sourceIP(), dest = destIP() {
	// do something
}
```



## Control Flow

#### Switch

`switch` control flow is of the form
```
switch <switching_variable>
case: <match1> [where <extra_condition>]
	<case_statement1>
case: <match2> ...
	<case_statement2>
...
[default:]
```
Note that in swift, all cases must be examined and that's what default is used for.

Note that switch_variable can be variable, constant or tuples (even class? should be any class who has the "=" method implemented)

The `match` can be some literal, multiple literal and ranges.

When the switching variable is a tuple, we might want to match only some element of the tuple, in that case we can use `(_, interested_part)` to match. Also, we can set the not matched element to be some local constant using `(match_part, let non-matchpart)` so that we can use them in the statement.

The optional `where` clause can be applied to force additional conditions on the switching variable itself.

#### Control Transfer Statement
Control transfer statement includes `continue`, `break`, `return` and `fallthrough`

Continue tells the loop to end the current loop body and go to next loop body. The loop condition will still be checked.

Break ends the loop or the switch and move the control to the end of the loop or and switch's closing brace (`}`).

Fallthrough will enter the next case statument without checking the case condition.

##### Labeled Statements

In swift we may have nested loops. So when we are using `continue` or `break`, we might want to specify where or which loop(s) do we want to break. In swift we can name the control flow using the label statement like this:
```
<label_name>: while <condition> {
	<statement>
}
```
`continue <label_name>` will go to the next iteration of the loop labeled.

`break <label_name>` will break the labeled loop and start from the next line after the loop.

## Function

Functions in swift can be defined in the form
```
func functionName([(inout|&)|var] [externalName] localName: type1, arg2: type2, [finalVaridicArg: typeFinal...]) [-> outputType]{
	<function_body>
}
```

Functions in swift by default pass arguments by value and set them to be constant in the function scope. To make the argument mutable we need to add the `var` keyword before the argument name. If we want to persist the change of the variable, we need to add the `inout` keyword before the name.

#### External Names for Parameters

When being called, the arguments are passed in the exact order to their definition. To make it less ambiguous, swift supports external names for parameter. They are defined as `func funcName(<externalName> <internalName>: <Type>)`, when the external name and the local name coincides, you can just put a `#` in front of the parameter name without typing in the name twice. For the parameters with default value: `func funcName(arg: type = defaultValue)`, a external name same as the internal name is automatically set up unless otherwise specified.

#### Variadic Parameters

Swift allows variadic variable by appending the type with three dots like `variadicVariable :Double...` to handle uncertain number of argument of such type. These arguments are accessed in the function body as `variadicVariable: [Double]`.

#### Function Types

Function types are written as: `<inputType> -> <outputType>`

Functions without a return value will return Void written as `()`, which is an empty tuple.

## Closure
Closure is a block of code that has its own functionality. Functions and nested functions are both some special case of closures.
Global functions (the plain function we usually define) are named closures that don't capture and variable.
Nested functions (the functions defined within another function) are named closures that capture the variables within that function scope.
Rugular closures are unnamed closures that capture the variables in the scope that it is defined.

#### Why we need closures?
Closures are good for simple and concise code. But what really differs closure with another function defined is that closure captures the variables in the scope it is defined even when the scope doesn't exist anymore. Moreover, these variables are encapsulated inside the closure. (the incrementor example). For the variables that the closure doesn't change, the closure will keep a copy of it. For the variables that the closure will change, the closure will keep a reference to the variable. This is because closure when defined, it is a constant, which mean the contents within the closure cannot be changed. Closure itself is a reference type, this means when we assign a closure to another variable, they are not only the same funciton, they also share the same captured variables. If closure is referenced by some object and at the same time, it reference back to that object or property, it will create a reference loop so that both of them will never be destroyed in the memory. Add an `[unowned property]` keyword to the type of the closure:
````
foo.bar = { (a:String, b:String) -> String [unowned foo] in
	// do your stuff here
	foo.bar2
}
````

## Enum
Enum in swift is more flexible than enums in other languages.
It is declared as follows:
````
enum <EnumType>[: rawValueType] {
	case <enumMember1>[(<associatedValues>)] [: rawValue]
}
````

Enum is more like class or struct than the enum in other languages. Unlike other languages, swift doesn't enforce a raw value for each of the enumMember, they can just be themselves. However, we can also assign a raw value to them. Moreover, we can associate some values to a enum member instance. This will make enum like a bunch of mini classes grouped together.

## Optional Chaining
Optional Chaining is a soft way to unwrap a optional. If we explicitly unwrap an optional using exclaimation mark, we will receive runtime error. However, when we are using optional chaining, we can access the properties or methods of the optional without breaking the code. 

The general rule is we put a question mark after anything (property, method, subscript) that might be nil.

Note that even if the value we are looking for is not nil, we still receive a optional of that type, and that's how the it get chained. Since it always return an optional that wraps the type we are looking for, its better to use it together with optional binding.

Any attempt to set property through optional chaining will have return type Void?. If the assignment is success, it returns `Void` otherwise `nil`.

If we want to access a subscript using optional chaining, just put the question mark after the closing bracket of the subscript.

## Protocol
Protocol are like interface in Java. It can be adopted by class, struct or enum.
````
protocol SomeProtocol {
	// protocol definition
	[static] var mustBeSettable: Int {get set}
	var doesNotNeedToBeSettable: Int {get}

	func functionName(<arguments>) 
}
````
If some class wants to conform to a protocol it should be like
````
class SomeClass: SuperClass, FirstProtocol, SecondProtocol {
	// definition

}
````

Protocol can be seen as type just like interface in java.

### Mutating Methods
In swift, structs and enums are value types and instance methods of value types by default cannot change properties of value types. However, this can be changed by adding a `mutating` keyword to the declaration of the method.

The same rules apply in protocol. Adding a `mutating` keyword will make a method capable of changing the properties of the instances of the structs and enums.

Note that if we have a class conforming to the protocol, we don't need to put the mutating keyword.

### Initializer
We have to add a `required` keyword to the initializer to ensure that the initializer get implemented by every subclass.
````
protocol SomeProtocol {
	init()
}

class conformingClass: SomeProtocol {
	required init() {
	\\ implementation
	}
}
````

### Optional Protocol Requirements
````
@objc ProtocolWithOptionalRequirement {
	optional var optionalVariable
	optional func optionalFunction
}
````
Since classes conform to such protocol do not have to implement the optional methods or variables, calling such methods or getting or setting such methods will always return a optional and we should use optional chain to access these properties or methods.

Note: Protocols with optional requirements must have the attributes `@objc` at the beginning of the declaration and can only be adopted by class.

### Extension to conform to protocol
If we have a class that doesn't conform to a protocol, we can extend it by
````
extension ClassToExtend: ProtocolToConform {
	methodToImplement() {
		\\ implementation
	}
}
````

## subscripts
Classes, structs and enumerations can define subscriptes as shortcuts to access some of the values:

````
class SomeClass {
	subscript(<shortCutParameters>) {
		// what you return for accessing the subscripts
		get {

		}

		// subscripts can be read only, so for those subscripts we don't have to specify the getter.
		set(newValue) {

		}
	}
}
````
You can define multiple subscripts as long as their input arguments are of different type.

## Inheritance

## Automatic Reference Counting
ARC only works for instances of class, not for structs and enums since the latters are value types.

### Strong Reference
When we assign an instance of a class to a property, variable or constant, a strong reference will be made. The instance won't be deallocated as long as any strong reference still holds.

###  Strong Reference Cycle Between Class Instances
Suppose we have two instance of two classes and both of them has a property refer to the other. Then even the pointer to these two instances are set to nil, the instances are still referred by each other's property, thus they will never be deallocated.

### Weak References
Instance that a strong reference refers to will not be deallocated because when we are accessiing that instance, if it's deallocated, a runtime error will occur and crash the program.

So if we are going to have a type of reference that is possible to refer to a no value object (or nil), the reference has to be optional. Because when we are still holding the reference, the instance we refer to might be deallocated and thus cannot be accessed.

ARC will set the reference to nil when the instance it refers to are deallocated thus a weak reference cannot be constant.

Assuming again we have two instance of two classes whose properties are referring to each other. To break the strong reference cycle, we want to set one or both of the reference to be weak. But which one?

If we set both to be weak, it will be shaky since we need other strong reference to refer to both of the instances. Code like below wouldn't work:
````
var john = Person()
var apt1620 = Apartment()
john.apartment = apt1620
apt1620 = nil // the Apartment instance will be deallocated and john will lose its apartment.
````
This is not the ideal case, since we want john to own its property and access it as long as we still have john. Thus it makes more sense to let the reference john has to the apartment to be strong.

Make the reference you are more likely to use to be strong.

### Unowned Reference
Unowned reference are similar to weak reference but one aspect, ARC wouldn't set the reference to nil when the instance it points to get deallocated.
Due to this property, when the referred instance gets deallcated and we try to access that instance by the unowned reference, the program will crash reliably. So when we are using the unowned reference, we need to make sure that it always has the instance available like a credit card always need a customer to be owner. Thus its unlikely that we leave a strong reference to a instance having a unowned reference.

### Strong Reference Cycle for Closures
If a class has a closure property and the closure access other properties or instance method, it will create a strong reference cycle. (Note that closure is reference type). This is because the closure will put the elements it uses into its capture list.

````
class SomeClass {
	var someClosure: (<inputArguments>) -> (<outputArguments>) {
		[<captureList> = unowned capture1, weak capture2](<closureType>) in
			// closure body
	}
}
````
If we can accept the capture to be nil, we set the capture to be weak, otherwise we set it to be unowned.












