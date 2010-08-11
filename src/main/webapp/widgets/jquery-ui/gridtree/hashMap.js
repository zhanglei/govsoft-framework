 function HashMap()   
 {   
     /** Map 大小 **/  
     var size = 0;   
     /** 对象 **/  
     var entry = new Object();   
        
     /** 存 **/  
     this.put = function (key , value)   
     {   
         if(!this.containsKey(key))   
         {   
             size ++ ;   
         }   
         entry[key] = value;   
     }   
        
     /** 取 **/  
     this.get = function (key)   
     {   
         return this.containsKey(key) ? entry[key] : null;   
     }   
        
     /** 删除 **/  
     this.remove = function ( key )   
     {   
         if( this.containsKey(key) && ( delete entry[key] ) )   
         {   
             size --;   
         }   
     }   
        
	 /**  
     * 判断Map是否为空  
     */  
	 this.isEmpty = function() {   
		return this.keys.length == 0;   
	 }; 	

     /** 是否包含 Key **/  
     this.containsKey = function ( key )   
     {   
         return (key in entry);   
     }   
        
     /** 是否包含 Value **/  
     this.containsValue = function ( value )   
     {   
         for(var prop in entry)   
         {   
             if(entry[prop] == value)   
             {   
                 return true;   
             }   
         }   
         return false;   
     }   
        

	 /**  
     * 遍历Map,执行处理函数  
     *   
     * @param {Function} 回调函数 function(key,value,index){..}  
     */  
     this.each = function(fn){   
        if(typeof fn != 'function'){   
            return;   
        }   
        var len = this.keys.length;   
        for(var i=0;i<len;i++){   
            var k = this.keys[i];   
            fn(k,this.data[k],i);   
        }   
     };   	

     /** 所有 Value **/  
     this.values = function ()   
     {   
         var values = new Array();   
         for(var prop in entry)   
         {   
             values.push(entry[prop]);   
         }   
         return values;   
     }   
        
     /** 所有 Key **/  
     this.keys = function ()   
     {   
         var keys = new Array();   
         for(var prop in entry)   
         {   
             keys.push(prop);   
         }   
         return keys;   
     }   
        
     /** Map Size **/  
     this.size = function ()   
     {   
         return size;   
     }
	 
	 /**  
     * 重写toString   
     */  
    this.toString = function(){   
        var s = "{";   
        for(var i=0;i<this.keys.length;i++,s+=','){   
            var k = this.keys[i];   
            s += k+"="+this.data[k];   
        }   
        s+="}";   
        return s;   
    };   
        
     /* 清空 */  
     this.clear = function ()   
     {   
         size = 0;   
         entry = new Object();   
     }   
 }   