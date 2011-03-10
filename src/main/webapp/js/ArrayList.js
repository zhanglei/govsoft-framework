/**
* @fileoverview Contains <tt>ArrayList</tt> class.
* The user can access elements by index position and search for elements in the list. <tt>ArrayList</tt> allows for duplicates.
*
* <p>
* This is part of Troika.ASP Framework - web development MVC framework for ASP 3.0.
* Please visit {@link http://www.troika-asp.com www.troika-asp.com} for more details.
* </p>
*
* @author Pavel Chuchev pav@troika-asp.com
* @version $Revision: 1.4 $
*/
/**
* Constructs a <tt>ArrayList</tt> object.
*
* @class This is <tt>ArrayList</tt> class - implementation of ordered collection.
*
* @constructor
* @return A new <tt>ArrayList</tt> object
* @type ArrayList
*/
function ArrayList() {

    this.init();
}

/**
* Initializes an empty <tt>ArrayList</tt>.
*
* @return <tt>ArrayList</tt> object instance itself
* @type ArrayList
*/
ArrayList.prototype.init = function () {

    this.elements = [];
    return this;
};

/**
* Returns an iterator over the elements in this list.
*
* @return An <tt>ListIterator</tt> over the elements in the list
* @type ListIterator
*/
ArrayList.prototype.listIterator = function () {

    return (new ListIterator()).init(this.elements);
};

/**
* Adds an element to this list.
*
* @param {Object} element The object to add to the list
* @return The new list length
* @type int
*/
ArrayList.prototype.add = function (element) {

    return this.elements.push(element);
};

/**
* Appends all of the elements of the parameter list to this list.
*
* @param {ArrayList} list The list elements of which to add to the list
* @return <tt>true</tt> If this list changed as a result of the call
* @type boolean
*/
ArrayList.prototype.addAll = function (list) {

    var before = this.size();

    if (list.listIterator) {

        var iterator = list.listIterator();

        while (iterator.hasNext()) {

            this.add(iterator.next());
        }
    }

    var after = this.size();
    return (before < after);
};

/**
* Removes all of the elements from this list.
*/
ArrayList.prototype.clear = function () {

    this.elements = [];
};

/**
* Returns <tt>true</tt> If this list contains the specified element.
*
* @param {Object} element The element whose presence in this list is to be tested.
* @return <tt>true</tt> If this list contains the specified element.
* @type boolean
*/
ArrayList.prototype.contains = function (element) {

    for (var key in this.elements) {

        var value = this.elements[key];
        if (value == element) {

            return true;
        }
    }

    return false;
};

/**
* Returns the element at the specified position in this list.
*
* @param {int} index The index of element to return.
* @return The element at the specified position in this list or <tt>undefined</tt> if the element is not found.
*/
ArrayList.prototype.get = function (index) {

    return this.elements[index];
};

/**
* Searches for the first occurence of the given argument.
*
* @param {Object} element The desired object.
* @return  The index of the first occurrence of the argument in this
*          list; returns <tt>undefined</tt> if the object is not found.
*/
ArrayList.prototype.indexOf = function (element) {

    for (var i = 0; i < this.elements.length; i++) {

        var value = this.elements[i];
        if (value == element) {

            return i;
        }
    }
};

/**
* Tests if this list has no elements.
*
* @return  <tt>true</tt> If this list has no elements;
*          <tt>false</tt> otherwise.
* @type boolean
*/
ArrayList.prototype.isEmpty = function () {

    return !this.elements.length;
};

/**
* Returns the index of the last occurrence of the specified object in
* this list.
*
* @param {Object} element The desired element.
* @return  The index of the last occurrence of the specified object in
*          this list; returns <tt>undefined</tt> If the object is not found.
* @type int
*/
ArrayList.prototype.lastIndexOf = function (element) {

    for (var i = (this.elements.length - 1); i > 0; i--) {

        if (this.get(i) == element) {

            return i;
        }
    }
};

/**
* Removes the first occurrence in this list of the specified element.
*
* @param {int} index The index of the element to be removed from this list.
* @return {Object} The removed element or <tt>undefined</tt> value.
* @type Object
*/
ArrayList.prototype.remove = function (index) {

    var element = this.get(index);
    if (element) {

        this.elements.splice(index, 1);
    }

    return element;
};

/**
* Removes elements from the list within index range
*
* @param {int} start The index of the start element to be removed.
* @param {int} end The index of the end element to be removed from this list.
*/
ArrayList.prototype.removeRange = function (start, end) {

    var deleteCount = end - start;

    this.elements.splice(start, end);
};

/**
* Replaces the element at the specified position in this list with the
* specified element.
*
* @param {int} index index of element to replace.
* @param {Object} element element to be stored at the specified position.
* @throws Object <tt>undefined</tt> error If the element to replace is not found
* @return The element previously at the specified position.
* @type Object
*/
ArrayList.prototype.set = function (index, element) {

    var previous = this.get(index);
    this.elements[index] = element;
    return previous;
};

/**
* Returns the number of elements in this list.
*
* @return The number of elements in this list.
* @type int
*/
ArrayList.prototype.size = function () {

    return this.elements.length;
};

/**
* Returns a comma separated values of all elements of the list.
*
* @return The string representation of the list.
* @type String
*/
ArrayList.prototype.toString = function () {

    var result = "";

    var iterator = this.listIterator();
    while (iterator.hasNext()) {

        result += iterator.next() + ",";
    }
    //strip off the last comma
    result = result.replace(/,$/, "");

    return result;
};
