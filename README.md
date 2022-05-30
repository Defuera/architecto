# architecto

Architecture example for a complex, yet trivial application. The task is to display two screens list and detailed and to organise a shared data flow. 
Sample implemented for
- BLoC ((pub.dev)[https://pub.dev/packages/bloc], (docs)[https://bloclibrary.dev/#/]) 
- Riverpod ((pub.dev)[https://pub.dev/packages/riverpod), (docs)[https://riverpod.dev/]).

Another tools explored in this example:
- Freezed in Bloc
- AsyncValue in Riverpod
- Retrofit in Bloc



## What usecases this sample covers

### Atchitecture
- List view with items
- Detailed view of the item
- Item can be liked and this state is propagated among all screens


### Navigation
- go_router 
- Autorouter


### 
- UI Events. Based on business logic execute one time ui event, like showing a dialog or navigating
  - ~~BlocListener~~ 
  - EventBus?
  - How to do it in provider

### What else this project covers?
- Working with storybook
- Implementation of Theaming with Light and Dark modes with simple switcher
-


### Package structure 

