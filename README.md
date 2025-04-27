# fun-fact-about-shaivona
1. Starting the App
main() runs the app by calling runApp(FunFactsApp());.

2. Stateless Widget: FunFactsApp
It's a MaterialApp that disables the debug banner.
It sets the title and shows the FunFactsHome screen as the home.

3. Stateful Widget: FunFactsHome
This widget manages changing state (the displayed fun fact).

4. State Class: FunFactsHomeState
Variables:
_counter: Keeps track of which fact to show.
_fact: The current text shown.
_facts: A list of fun facts about Shivona.
Method: _showFact()
Changes _fact when the button is pressed.
It shows a new fact by cycling through the list with % (modulus operator).

5. UI Design (build method)
AppBar: Shows the title "Here Are Some Fun Facts About Shivona".
Body:
A CircleAvatar displaying an image from the internet.
A greeting text: "Hi, it's about Shaivona!".
The current fun fact.
A button that, when pressed, shows the next fact.

In short:
I made a simple Flutter app that shows fun facts about Shivona one-by-one when a button is pressed, with a nice layout and picture (but picture is not shwo). 
