## Intro to the DOM

### Objectives

* Learn how to access DOM elements with javascript
* Learn how to make elements interactive by writing event listeners

### Tasks

* Talk about Browser APIs vs Javascript the language

* We care about the DOM because it lets us:
  * Find elements on the page using CSS Selectors
    * Select an item by ID       (`#best-table`)
    * Select an item by Class    (`.table`)
    * Select an item by HTML Tag (`h1`)
  * Add elements to the page
  * Remove elements from the page
  * Change elements on the page

* See how to write different selectors and what they match
  * Talk about NodeList or HTMLCollection vs Array

  | Selector name                   | Return shape   | Return type    | Reference             | forEach? |
  | ------------------------------- | -------------- | -------------- | --------------------- | -------- |
  | `node.getElementById()`        | Single element | Element        | https://goo.gl/8cHGoy | N/A      |
  | `node.getElementsByClassName()` | Collection     | HTMLCollection | https://goo.gl/qcAhcp | No       |
  | `node.getElementsByTagName()`   | Collection     | HTMLCollection | https://goo.gl/QHozSh | No       |
  | `node.querySelector()`          | Single element | Element        | https://goo.gl/6Pqbcc | N/A      |
  | `node.querySelectorAll()`       | Collection     | NodeList       | https://goo.gl/vTfXza | Yes      |

* See how to manipulate a DOM node
  * innerText
  * innerHTML
  * traversal / finding parents, childen, siblings

* See how to add a DOM node (2 ways)
  * futzing with innerHTML
  * createElement / appendChild / removeChild

* Use event listeners to add new items to the page
  * addEventListener
  * preventDefault
  * show examples of click and submit
  * Only add them once, do it once page is loaded _or_ new element is added
    * If it is added multiple times, it will run multiple times (per event)

* Make sure y'all get a good video on how javascript events execute / callback stack, etc
