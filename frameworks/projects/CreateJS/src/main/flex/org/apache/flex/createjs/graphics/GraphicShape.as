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
package org.apache.flex.createjs.graphics
{
	COMPILE::SWF
	{
		import org.apache.flex.svg.GraphicShape
	}
		
    COMPILE::JS
    {
        import createjs.Shape;
		import createjs.Stage;
        
        import org.apache.flex.createjs.core.CreateJSBase;
        import org.apache.flex.core.WrappedHTMLElement;
    }
	
	import org.apache.flex.graphics.IFill;
	import org.apache.flex.graphics.IStroke;
	
	/**
	 * This is the base class for CreateJS graphic shape components such as
	 * Circle and Rect.
	 *
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion FlexJS 0.0
	 */
    
    COMPILE::SWF
	public class GraphicShape extends org.apache.flex.svg.GraphicShape
	{
		// nothing special for SWF version.
	}
    
    COMPILE::JS
    public class GraphicShape extends CreateJSBase
    {
        /**
		 * Creates a CreateJS Shape as the element.
		 * 
         * @flexjsignorecoercion org.apache.flex.core.WrappedHTMLElement
         * @flexjsignorecoercion createjs.Shape
         */
        override protected function createElement():WrappedHTMLElement
        {
			var base:createjs.Shape = new createjs.Shape(null);
            
            element = base as WrappedHTMLElement;
			element.flexjs_wrapper = this;
			
			positioner = element;
			
            return element;
        }
        
    }
}
