/**
* @fileoverview Contains extensions to standard <tt>String</tt> JavaScript object.
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
* Searches this String and substitutes ${varName} with value.
*
* @return The expanded string.
* @type String
*/
Object.prototype.expandVar = function (varName, value) {

    var re =  new RegExp("\\${" + varName + "}", "g");
    return this.replace(re, value);
};

/**
* Removes the leading and tail white space from this string.
*/
String.prototype.trim = function () {

    return this.replace(/^\s*/, "").replace(/\s*$/, "");
};
