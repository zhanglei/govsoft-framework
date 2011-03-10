/**
* @fileoverview Contains <tt>ListIterator</tt> class.
*
* <p>
* This is part of Troika.ASP Framework - web development MVC framework for ASP 3.0.
* Please visit {@link http://www.troika-asp.com www.troika-asp.com} for more details.
* </p>
*
* @author Pavel Chuchev pav@troika-asp.com
* @version $Revision: 1.3 $
*/
/**
* An iterator over a list.
*
* <ul>
*   <li> Iterators allow the caller to remove elements from the
*        underlying collection during the iteration with well-defined
*         semantics.
*   <li> Method names have been improved.
* </ul>
*
* @class This is <tt>ListIterator</tt> class - implementation of iterator over an list.
*
* @constructor
* @param {Array} v The list to iterate through.
* @return A new <tt>ListIterator</tt> object.
* @type ListIterator
*/
function ListIterator(v) {

    if (arguments.length) {

        this.init(v);
    }
}

/**
* Initializes <tt>ListIterator</tt>.
*
* @return <tt>ListIterator</tt> object instance itself.
* @type ListIterator
*/
ListIterator.prototype.init = function (v) {

    this.values = v || [];
    this.index = 0;
    this.element = 0;
    return this;
};

/**
* Returns <tt>true</tt> if the iteration has next element.
*
* @return <tt>true</tt> If the iterator has next element.
* @type boolean
*/
ListIterator.prototype.hasNext = function () {

    return this.index < this.values.length;
};

/**
* Returns <tt>true</tt> if the iteration has previous element.
*
* @return <tt>true</tt> If the iterator has previous element.
* @type boolean
*/
ListIterator.prototype.hasPrevious = function () {

    return this.index > 0;
};

/**
* Returns the next element in the iteration.  Calling this method
* repeatedly until the {@link #hasNext()} method returns false will
* return each element in the underlying collection exactly once.
*
* @return The next element in the iteration.
* @type Object
*/
ListIterator.prototype.next = function () {

    if (this.hasNext()) {

        var value = this.values[this.index++];
        this.element = this.index - 1;
    }
    return value;
};

/**
* Returns the current index of the iteration.
*
* @return The next element in the iteration.
* @type int
*/

ListIterator.prototype.index = function () {

    return this.index;
};

/**
* Returns the previous element in the iteration.  Calling this method
* repeatedly until the {@link #hasPrevious()} method returns false will
* return each element in the underlying collection exactly once.
*
* @return The next element in the iteration.
* @type Object
*/
ListIterator.prototype.previous = function () {

    if (this.hasPrevious()) {

        var value = this.values[--this.index];
        this.element = this.index;
    }
    return value;
};

/**
* Removes from the underlying collection the last element returned by the
* iterator.
*/
ListIterator.prototype.remove = function () {

    this.values.splice(this.element, 1);
};

/**
* Sets a new value to the current element.
*
* @param {Object} value The new value.
*/
ListIterator.prototype.set = function (value) {

    this.values[this.element] = value;
};

/**
* Appends a new value to the current list.
*
* @param {Object} value The new value.
*/
ListIterator.prototype.add = function (value) {

    this.values.push(value);
};
