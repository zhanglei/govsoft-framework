/**
* @fileoverview Contains <tt>HashMap</tt> class. A HashMap cannot contain duplicate keys;
* each key can map to at most one value.
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
* Constructs an empty <tt>HashMap</tt> object.
*
* @class This is <tt>HashMap</tt> class - implementation of an object that maps keys to values.
*
* @constructor
* @return A new <tt>HashMap</tt> object
* @type HashMap
*/
function HashMap() {

    this.init();
}

/**
* Initializes an empty <tt>HashMap</tt>.
*
* @return <tt>HashMap</tt> object instance itself
* @type HashMap
*/
HashMap.prototype.init = function () {

    this.values = {

    };
    this.isValidating = false;
    return this;
};

/**
* Removes all of the key/value pairs this map.
*/
HashMap.prototype.clear = function () {

    this.values = {

    };
};

/**
* Returns <tt>true</tt> if this map contains the specified key.
*
* @param {Object} key The key whose presence in this map is to be tested.
* @return <tt>true</tt> If this map contains the specified key.
* @type boolean
*/
HashMap.prototype.containsKey = function (key) {

    return typeof (this.values[key]) != "undefined";
};

/**
* Returns <tt>true</tt> if this map contains the specified value.
*
* @param {Object} value The value whose presence in this map is to be tested.
* @return <tt>true</tt> If this map contains the specified value.
* @type boolean
*/
HashMap.prototype.containsValue = function (value) {

    for (var key in this.values) {

        var val = this.values[key];
        if (val == value) {

            return true;
        }
    }

    return false;
};

/**
* Returns value for the key.
*
* @param {Object} key The key whose value in this map is to be returned.
* @return The value if found or <tt>undefined</tt> if not found and isValidating flag is not set.
* @throws Error If the key is not found.
* @type Object
*/
HashMap.prototype.get = function (key) {

    if (this.containsKey(key)) {

        return this.values[key];
    }
    else {

        if (this.isValidating) {

            throw new Error("Field '" + key + "' not found");
        }
        return undefined;
    }
};

/**
* Tests if this map has no elements.
*
* @return  <tt>true</tt> If this map has no elements;
*          <tt>false</tt> otherwise.
* @type boolean
*/
HashMap.prototype.isEmpty = function () {

    return !this.size();
};

/**
* Returns an array of the keys contained in this map.
*
* @return A an array of the keys contained in this map.
* @type Array
*/
HashMap.prototype.keySet = function () {

    var result = [];
    for (var key in this.values) {

        var value = this.values[key];
        if (typeof (value) != "object" && typeof (value) != "function") {

            result.push(key);
        }
    }

    return result;
};

/**
* Associates the specified value with the specified key in this map.
* If the map previously contained a mapping for this key, the old value is
* replaced by the specified value.
*
* @param {Object} key The key with which the specified value is to be associated.
* @param {Object} value The value to be associated with the specified key.
* @return The previous value associated with specified key, or <tt>undefined</tt>
*          if there was no mapping for key.
* @type Object
*/
HashMap.prototype.put = function (key, value) {

    var previous = this.containsKey(key) ? this.get(key) : undefined;

    this.values[key] = value;
    return previous;
};

/**
* Copies all of the mappings from the specified map to this map.
*
* @param {Object} values Mappings to be stored in this map.
*/
HashMap.prototype.putAll = function (values) {

    if (typeof (values) == "object") {

        for (var key in values) {

            var value = values[key];
            this.values[key] = value;
        }
    }
};

/**
* Removes the mapping for this key from this map if it is present.
*
* @param {Object} key The key whose mapping is to be removed from the map.
* @return The previous value associated with specified key, or <tt>undefined</tt>
*          if there was no mapping for key.
* @type Object
*/
HashMap.prototype.remove = function (key) {

    var value = this.containsKey(key) ? this.get(key) : undefined;

    if (value) {

        delete this.values[key];
    }

    return value;
};

/**
* Returns the number of key-value mappings in this map.
*
* @return The number of key-value mappings in this map.
* @type int
*/

HashMap.prototype.size = function () {

    var count = 0;
    for (key in this.values) {

        count++;
    }
    return count - 1;
};

/**
* Populates this map with key/value pairs from the specified collection.
* Where the value is <tt>ArrayList</tt> containing one or more values per key.
* It adapts one ASP collection object to HashMap object. 
*/
HashMap.prototype.populate = function (collection) {

    var vars =  new Enumerator(collection);
    for (vars.moveFirst(); !vars.atEnd(); vars.moveNext()) {

        var key = vars.item();
        if (!this.containsKey(key)) {

            var arrayList =  new ArrayList();

            var values = collection(key);
            try {

                var en =  new Enumerator(values);
                for (en.moveFirst(); !en.atEnd(); en.moveNext()) {

                    arrayList.add(en.item());
                }
            }
            catch (e) {

                arrayList.add(values);
            }

            this.values[key] = arrayList;
        }
    }
};
