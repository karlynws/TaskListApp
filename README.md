#  Module 5

a) ___modifiers______ are used to customize the appearance and behavior of a View.

b) The basic building block of a SwiftUI interface is a __view____________.

c) Each View in SwiftUI is a ___value________ type.

d) List two ways you can find the modifiers of a View.
-Control click in x code, or click the + in upper right corner in x code and click on the modifiers tab to see check out whats available in the library.

e) True or False: A modifier changes a View.
True? Modifiers are actually structs/value types. So it is returning a completely new view with the changes you’ve added, which is a reason that order you apply modifiers matters too. 

f) Modifiers are performed and returned in ____order______ from the _____view__________ they are applied to.

g) When the data driving a View changes, that View has to be _____refreshed_______ to reflect the change.

h) True or False: The @Binding establishes a two-way communication between Views. True

i) @State works with ___value______ types and @StateObject works with ______reference______ types.

j) True or False: A @State property can be defined as let (constant).
False

k) A List is a specialized version of a _____V______ stack.

l) The default alignment of a VStack is _____center_______, and the default alignment of the HStack is ___center_______.

n) A stack always gets one  _____view___________from each of its children.

o) The alignment guide for an HStack is ______horizontalAlignment________. And the alignment guide for a VStack is ______verticalAlignment_________.

p) Grids only come in _____two_______ variants. LazyVGrid and LazyHGrid

q) The Grid Item Array defines the ______layout_________ of the Grid.
