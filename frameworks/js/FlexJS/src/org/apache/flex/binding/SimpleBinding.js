/**
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

goog.provide('org.apache.flex.binding.SimpleBinding');

goog.require('org.apache.flex.FlexGlobal');
goog.require('org.apache.flex.FlexObject');

/**
 * @constructor
 * @extends {org.apache.flex.FlexObject}
 */
org.apache.flex.binding.SimpleBinding = function() {
    org.apache.flex.FlexObject.call(this);
    
    /**
     * @private
     * @type {object}
     */
    this.document;

};
goog.inherits(
    org.apache.flex.binding.SimpleBinding, org.apache.flex.FlexObject
);

/**
 * @expose
 * @type {Object}
 */
org.apache.flex.binding.SimpleBinding.prototype.destination = null;

/**
 * @expose
 * @type {string}
 */
org.apache.flex.binding.SimpleBinding.prototype.destinationPropertyName = '';

/**
 * @expose
 * @type {string}
 */
org.apache.flex.binding.SimpleBinding.prototype.eventName = '';

/**
 * @expose
 * @type {Object}
 */
org.apache.flex.binding.SimpleBinding.prototype.source = null;

/**
 * @expose
 * @type {string}
 */
org.apache.flex.binding.SimpleBinding.prototype.sourceID = '';

/**
 * @expose
 * @type {string}
 */
org.apache.flex.binding.SimpleBinding.prototype.sourcePropertyName = '';

/**
 * @this {org.apache.flex.binding.SimpleBinding}
 */
org.apache.flex.binding.SimpleBinding.prototype.changeHandler = function() {
    this.destination['set_' + this.destinationPropertyName](
        this.source['get_' + this.sourcePropertyName]()
    );
};

/**
 * @this {org.apache.flex.binding.SimpleBinding}
 * @param {object} value The strand (owner) of the bead.
 */
org.apache.flex.binding.SimpleBinding.prototype.set_strand = function(value) {
    this.destination = value;
    if(this.document['get_' + this.sourceID] != undefined)
    {
        this.source = this.document['get_' + this.sourceID]();
    }
    else
    {
        this.source = this.document[this.sourceID];
    }
    this.source.addEventListener(
        this.eventName, org.apache.flex.FlexGlobal.createProxy(
            this, this.changeHandler
        )
    );

    this.changeHandler();
};

/**
 * @this {org.apache.flex.binding.SimpleBinding}
 * @param {object} document The MXML object.
 * @param {string} id The id for the instance.
 */
org.apache.flex.binding.SimpleBinding.prototype.setDocument =
                                                    function(document, id) {
    this.document = document;
};
