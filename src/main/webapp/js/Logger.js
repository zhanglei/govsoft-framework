/**
* @fileoverview Contains <tt>Logger</tt> class.
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
* Logs nothing
*/
Logger.FILTER_NONE =  - 1;
/**
* Logs errors
*/
Logger.FILTER_ERROR = 0;
/**
* Logs warnings
*/
Logger.FILTER_WARNING = 1;
/**
* Logs info messages
*/
Logger.FILTER_INFO = 2;
/**
* Constructs a <tt>Logger</tt> object.
*
* @class <tt>Logger</tt> class logs messages to a text file..
*
* <p>
* The config.xml file defines the logger tag:
* </p>
* <pre>
*   &lt;logger&gt;
*      &lt;file-name&gt;${root}/WEB-INF/logs/application.log&lt;/file-name&gt;
*      &lt;max-size&gt;512&lt;/max-size&gt;
*      &lt;generations&gt;3&lt;/generations&gt;
*      &lt;log-level&gt;FILTER_INFO&lt;/log-level&gt;
*   &lt;/logger&gt;
* </pre>
*
* <ul>
* <li>file-name - specifies the name of the file. ${root} variable is expanded with the full path to your web application location.</li>
* <li>max-size - tell the maximum size of the file before it rolls in kilobytes.</li>
* <li>generations - numbers of files to keep before rolling them removing the oldest. For example:
* <p>
* application.log<br/>
* application.log.1<br/>
* application.log.2<br/>
* application.log.3 - the oldest
</p>
* </li>
*
* </ul>
*
* <p>
* Example of log entry: [2007/03/06 02:25:31] {I} TRAN ID - 1173147931231-1 {I} Info message goes here
* </p>
*
*
* @constructor
* @param {Config} config The instance of <tt>Config</tt> class.
* @return A new <tt>Logger</tt> object.
* @type Logger
*/
function Logger(config) {

    var fileName = config.logger.fileName;
    var maxSize = config.logger.maxSize;
    var generations = config.logger.generations;
    var logLevel = Logger[config.logger.logLevel];

    var fso =  new ActiveXObject("Scripting.FileSystemObject");
    var increment = 0;

    /**
    * Logs error message.
    *
    * @param {Object} err The err object to log
    * @return The transactionId so that you can locate it in the log file
    * @throw File IO Error if any problems.
    * @type String
    */
    this.error = function (err) {

        if (logLevel >= Logger.FILTER_ERROR) {

            return log("E", objToString(err));
        }
    };

    /**
    * Logs warning message.
    *
    * @param {Object} err The err object to log
    * @return The transactionId so that you can locate it in the log file
    * @throw File IO Error if any problems.
    * @type String
    */
    this.warning = function (err) {

        if (logLevel >= Logger.FILTER_WARNING) {

            return log("W", objToString(err));
        }
    };

    /**
    * Logs information level message.
    *
    * @param {String} msg The message to log
    * @return The transactionId so that you can locate it in the log file
    * @throw File IO Error if any problems.
    * @type String
    */
    this.info = function (msg) {

        if (logLevel >= Logger.FILTER_INFO && msg) {

            return log("I", msg);
        }
    };

    function objToString(o) {

        var result = "";

        if (typeof (o) == "object") {

            result = "\r\n" + o.toString();
        }
        else {

            result = o;
        }

        return result;
    }

    function getTranId() {

        var now =  new Date();
        increment++;

        if (increment > 9999) {

            increment = 0;
        }

        return now.getTime() + "-" +  increment;
    }

    function createLogMessage(transId, level, msg) {

        var now = "[" +  new Date() + "]";
        level = " {" + level + "} ";

        return now + level + "TRAN ID - " + transId + level + msg;
    }

    function log(level, msg) {

        var result = getTranId();
        msg = createLogMessage(result, level, msg);

        var failed = 0;
        var reason = "";
        var forAppending = 8;

        while (failed < 100 && failed !=  - 1) {

            try {

                var file = fso.FileExists(fileName) ? fso.OpenTextFile(fileName, forAppending, true) : fso.CreateTextFile(fileName);

                file.WriteLine(msg);
                file.Close();

                failed =  - 1;
            }
            catch (e) {

                failed++;
                reason = e.description;
            }
        }

        if (failed ==  - 1) {

            checkLogSize();
        }
        else {

            throw new Error("File IOException: " + reason + "\r\nfileName: " + fileName);
        }

        return result;
    }

    function checkLogSize() {

        //If there is no maxsize or generations, 
        //ignore creating generation files
        if (!maxSize || !generations) {

            return;
        }

        var file = fso.GetFile(fileName);

        //If we have reached the max size then generate
        if (file.size >= (maxSize * 1024)) {

            for (var i = generations; i > 0; i--) {

                var oldFileName = fileName;
                if ((i - 1) > 0) {

                    oldFileName += "." + (i - 1);
                }

                if (fso.FileExists(oldFileName)) {

                    var newFileName = fileName + "." + i;
                    if (fso.FileExists(newFileName)) {

                        fso.DeleteFile(newFileName);
                    }

                    fso.MoveFile(oldFileName,  newFileName);
                }
            }
        }
    }
}
