/**
 * Eve Js Loader 
 * @version 1.0.2
 * @author laruence<laruence at yahoo.com.cn>
 * @copyright (c) 2009 www.laruence.com
 */ 
  

/**
 * a global object instance, you can easily change to a class definition
 */
var Loader = {
	/**
	 * @var onLoad  when load a individual completed , this event will be fired
	 */
    onLoad : function(){},
	/**
	 * @var onReady when all scripts loaded, this event will be fired
	 */
    onReady : function(){},
	/**
	 * a empty constructor
	 */
    init : function(container) {
    },
	/**
	 * a empty error handler
	 */
    handlerError : function(e) {
        alert(e);
    },
	/**
	 * event register
	 * @param string evt  event name
	 * @param function handler 
	 */
    on : function(evt, handler) {
        switch ( evt.toLowerCase() ) {
            case 'load' :
                this.onLoad = handler;
            break;
            case 'ready' :
                this.onReady = handler;
            break;
            default :
            break;
        }
        return true;
     },
	/**
	 * private method
	 */
    _load : function(path, callback) {
        try {
            var script = document.createElement('script');
            script.src = path + '#' + Math.random();
            script.type = "text/javascript";
            document.getElementsByTagName("head")[0].appendChild(script);
            if( script.addEventListener ) {
                script.addEventListener("load", callback, false);
            } else if(script.attachEvent) {
                script.attachEvent("onreadystatechange", function(){
                        if(script.readyState == 4
                            || script.readyState == 'complete'
                            || script.readyState == 'loaded') {
                            callback();
                        }
                });
            }
        } catch(e) {
            this.handlerError(e);
			callback();
        }
    },
	/**
	 * start loding process
	 * @param array scripts  files want to be loaded
	 */
    load : function(scripts) {
        var total = scripts.length;
        var _self  = this;
        var indicator = arguments[1] || 0;
        if ( indicator >= total ) {
            _self.onReady();
            return true;
		}

        var callee = arguments.callee;
        var script = scripts[indicator];
        this._load(script, function() {
            _self.onLoad(script);
            callee.apply(_self, [scripts, ++indicator]);
        });
        return true;
    }
}
