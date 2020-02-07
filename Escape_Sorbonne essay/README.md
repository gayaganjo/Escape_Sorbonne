quizzy
======

Super simple jQuery quiz template.

##Components

* index.html: Content, including quiz questions and answer options.
* style.css: All the pretty goes in here.
* quiz.js: Makes it go.

### index.html

Congratulations on your purchase of a reusable jQuery quiz template. (KIDDING, it was free.)

Edit the HTML to customize your quiz content. To add new questions, use this format:

    <div class="question q#">
    	<p>Question text?</p>
    		<ul>
    		  <li>Mon Mothma</li>
    			<li>Mara Jade</li>
    			<li>Callista</li>
    			<li>Winter</li>
    		</ul>
    </div>

... where # changes to the question number.

Should you wish to have more or fewer than four options, just add or remove li tags as necessary. No changes to the JS needed.

### style.css

Go ape. There is super simplistic styling in this example, but do whatever you want.

### quiz.js

The file is comprehensively commented. The only thing you HAVE to edit is the quiz.answers object (starting on line 6). The correct answer text must appear exactly as it does in the HTML file.

To add additional answers, add more property/value pairs using the question number as the property name.

If you WANT to change the text the user sees after answering a question correctly or incorrectly, you can do that on lines 30 and 33.