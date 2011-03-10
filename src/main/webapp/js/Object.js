/**
* @fileoverview Contains extensions to standard JavaScript objects - <tt>Array</tt> and <tt>Object</tt>.
* Any other classes implicitly extend Object class and hence inherit the following important functionality.
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
* Returns <tt>true</tt> if the array has the matching element.
*
* @return <tt>true</tt> If the array has the matching element.
* @type boolean
*/
Array.prototype.contains = function (match) {

    for (var i = 0; i < this.length; i++) {

        if (this[i] == match) {

            return true;
        }
    }

    return false;
};

/**
* Recursively accesses all instance properties and represents it as XML string.
*
* @return The serialized object as XML string.
* @type String
*/
Object.prototype.toXML = function () {

    var numRE = /^\d+$/;
    var slashRE = /\//g;

    function marshal(variable, level, name) {

        var result = [];

        level = level ? level : 0;

        var tag = "";

        if (name) {

            tag = name.replace(slashRE, "_");

            if (numRE.test(tag)) {

                tag = "e" + name.replace(slashRE, "_");
            }

        }
        else {

            tag = getClassName(variable).replace(slashRE, "_");
        }

        switch (typeof (variable)) {
    
            case "object":
    
                openTag(result, tag, level);
                nl(result);
                processObject(result, variable, level);
                tab(result, level);
                closeTag(result, tag);
    
                break;
    
            case "string":
    
                if (!variable.length) {
    
                    break;
                }
    
                openTag(result, tag, level);
    
                if (tag == "_xml_") {
    
                    result.push(variable);// _xml_ is already xml safe, do not encode
                }
                else {
    
                    result.push(xmlSafe(variable));
                }
    
                closeTag(result, tag);
    
                break;
    
            case "boolean":
    
                openTag(result, tag, level);
                result.push(variable ? "true" : "false");
                closeTag(result, tag);
                nl(result);
    
                break;
            case "number":
    
                openTag(result, tag, level);
                result.push(variable);
                closeTag(result, tag);
        }

        return result.join("");
    }

    function openTag(result, tag, level) {

        tab(result, level);
        result.push("<");
        result.push(tag);
        result.push(">");
    }

    function closeTag(result, tag) {

        result.push("</");
        result.push(tag);
        result.push(">");
        nl(result);
    }

    function nl(result) {

        result.push("\r\n");
    }

    function getClassName(variable) {

        var funcDef = "" + variable.constructor;

        var start = funcDef.indexOf(" ") + 1;
        var end = funcDef.indexOf("(");

        return funcDef.substring(start, end);
    }

    function tab(result, level) {

        for (var i = 0; i < level; i++) {

            result.push("\t");
        }
    }

    function xmlSafe(xml) {

        xml = xml.replace(/&/g, "&amp;");
        xml = xml.replace(/</g, "&lt;");
        xml = xml.replace(/>/g, "&gt;");
        xml = xml.replace(/`/g, "&apos;");
        xml = xml.replace(/\"/g, "&quot;");
        xml = xml.replace(/\'/g, "&apos;");

        return xml;
    }

    function processObject(result, variable, level) {

        for (var key in variable) {

            var value = variable[key];

            if (value) {

                var tabs = level + 1;
                result.push(marshal(value, tabs, key));
            }
        }

        return result.join("");
    }

    return marshal(this);
};

/**
* Converts the instance to JavaScript literal object notation in JSON string format.
*
* @return The serialized object as JSON string.
* @type String
*/
Object.prototype.toString = function () {

    return JSON.stringify(this);
};

/**
* Takes JSON string and converts it back to native JavaScript object.
*
* @param {String} str JSON string.
* @return The deserialized object instance.
* @type Object
*/
Object.prototype.valueOf = function (str) {

    var obj = eval("(" + str + ")");

    for (var k in obj) {

        this[k] = obj[k];
    }

    return this;
};

/**
* Converts each instance properties to string.
*/
Object.prototype.flatten = function () {

    for (var k in this) {

        if (typeof (this[k]) != "function") {

            this[k] = this[k] ? "" + this[k] : "";
        }
    }
};

/**
* Copies values of corresponding properties from fromObj to this instance.
*
* @param {Object} fromObj The instance to copy property values from.
*/
Object.prototype.assign = function (fromObj) {

    for (var i in this) {

        var value = fromObj[i];

        if (value && typeof (value) != "function") {

            this[i] = value ? "" + value : "";
        }
    }
};

/**
* Returns an array of all properties of this object.
*
* @return The array of all properties of this object.
* @type Array
*/
Object.prototype.properties = function () {

    var result = [];

    for (var k in this) {

        if (typeof (this[k]) != "function") {

            result.push(k);
        }
    }
    
    return result;
};
