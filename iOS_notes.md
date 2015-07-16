- When cell view go outside of a collectionView or table view, layout might get wierd.

- Responder Chain

https://developer.apple.com/library/ios/documentation/EventHandling/Conceptual/EventHandlingiPhoneOS/event_delivery_responder_chain/event_delivery_responder_chain.html

When a user-generated event occurs, the UIKit will first create a Event Object containing the information and place it in the currently active app's event queue and dispatches it for handling. 

## Hit Testing
iOS use hit-testing to determine where did the event occur. Hit testing checks if teh event is within the bounds of the view and recursively checks it for its subviews. Finally, it returns the deepest subview in the view hierachy that contains the touch point.

##
When it finds the hit test view, then iOS checks if the view can handle the event, if not, it goes back in the responder chain until it finds one view that can handle the event.

The app on the right follows a slightly different path, but all event delivery paths follow these heuristics:

1. A view passes an event up its view controller’s view hierarchy until it reaches the topmost view.
2. The topmost view passes the event to its view controller.
3. The view controller passes the event to its topmost view’s superview.
(Steps 1-3 repeat until the event reaches the root view controller.)

4. The root view controller passes the event to the window object.
5. The window passes the event to the app object.


- To enable a button in a custom cell, you have to check 'enable user interaction' in the attribute inspector.