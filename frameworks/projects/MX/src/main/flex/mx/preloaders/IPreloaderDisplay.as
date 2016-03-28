////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////

package mx.preloaders
{

COMPILE::AS3
{
	import flash.display.Sprite;		
}
COMPILE::JS
{
	import flex.display.Sprite;		
}
import org.apache.flex.events.IEventDispatcher;

/**
 *  Defines the interface that 
 *  a class must implement to be used as a download progress bar.
 *  The IPreloaderDisplay receives events from the Preloader class
 *  and is responsible for visualizing that information to the user.
 *
 *  @see mx.preloaders.DownloadProgressBar
 *  @see mx.preloaders.Preloader
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Flex 3
 */
public interface IPreloaderDisplay extends IEventDispatcher
{
    //--------------------------------------------------------------------------
    //
    //  Properties
    //
    //--------------------------------------------------------------------------

    //----------------------------------
    //  backgroundAlpha
    //----------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#backgroundAlpha
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function get backgroundAlpha():Number;
    
    /**
     *  @private
     */
    function set backgroundAlpha(value:Number):void;
    
    //----------------------------------
    //  backgroundColor
    //----------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#backgroundColor
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */ 
    function get backgroundColor():uint;
    
    /**
     *  @private
     */
    function set backgroundColor(value:uint):void;
    
    //----------------------------------
    //  backgroundImage
    //----------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#backgroundImage
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function get backgroundImage():Object;
    
    /**
     *  @private
     */
    function set backgroundImage(value:Object):void;

    //----------------------------------
    //  backgroundSize
    //----------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#backgroundSize
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function get backgroundSize():String;
    
    /**
     *  @private
     */
    function set backgroundSize(value:String):void;

    //----------------------------------
    //  preloader
    //----------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#preloader
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function set preloader(obj:Sprite):void;
    
    //----------------------------------
    //  stageHeight
    //----------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#stageHeight
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function get stageHeight():Number;
    
    /**
     *  @private
     */
    function set stageHeight(value:Number):void;
    
    //----------------------------------
    //  stageWidth
    //----------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#stageWidth
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function get stageWidth():Number;
    
    /**
     *  @private
     */
    function set stageWidth(value:Number):void;
    
    //--------------------------------------------------------------------------
    //
    //  Methods
    //
    //--------------------------------------------------------------------------

    /**
     *  @copy mx.preloaders.DownloadProgressBar#initialize()
     *  
     *  @langversion 3.0
     *  @playerversion Flash 9
     *  @playerversion AIR 1.1
     *  @productversion Flex 3
     */
    function initialize():void;
}

}