/**
* @fileoverview Defines overridden methods for JavaScript <tt>Date</tt> class.
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
* Converts <tt>Date</tt> objects to string
*
* @return The date string in YYYY/MM/YY HH:MM:SS format
* @type String
*/
Date.prototype.toString = function () {

    var d = this;

    function formatDate(d) {

        var y = d.getFullYear();
        var m = (d.getMonth() < 9 ? "0" : "") + (d.getMonth() + 1);
        var date = (d.getDate() < 10 ? "0" : "") + d.getDate();

        return y + "/" + m + "/" + date;
    }

    return formatDate(d) + " " + (d.getHours() < 10 ? "0" : "") + d.getHours() + ":" + (d.getMinutes() < 10 ? "0" : "") + d.getMinutes() + ":" + (d.getSeconds() < 10 ? "0" : "") + d.getSeconds();
};
