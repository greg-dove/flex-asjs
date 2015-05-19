/**
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

goog.provide('org_apache_flex_html_beads_models_TextModel');

goog.require('org_apache_flex_core_ITextModel');
goog.require('org_apache_flex_events_EventDispatcher');



/**
 * @constructor
 * @extends {org_apache_flex_events_EventDispatcher}
 * @implements {org_apache_flex_core_ITextModel}
 */
org_apache_flex_html_beads_models_TextModel =
    function() {
  org_apache_flex_html_beads_models_TextModel.base(this, 'constructor');
  this.className = 'TextModel';
};
goog.inherits(
    org_apache_flex_html_beads_models_TextModel,
    org_apache_flex_events_EventDispatcher);


/**
 * Metadata
 *
 * @type {Object.<string, Array.<Object>>}
 */
org_apache_flex_html_beads_models_TextModel.prototype.FLEXJS_CLASS_INFO =
    { names: [{ name: 'TextModel',
                qName: 'org_apache_flex_html_beads_models_TextModel' }],
      interfaces: [org_apache_flex_core_ITextModel] };


Object.defineProperties(org_apache_flex_html_beads_models_TextModel.prototype, {
    /** @expose */
    strand: {
        /** @this {org_apache_flex_html_beads_models_TextModel} */
        set: function(value) {
            this.strand_ = value;
        }
    },
    /** @expose */
    text: {
        /** @this {org_apache_flex_html_beads_models_TextModel} */
        get: function() {
            return this.text_;
        },
        /** @this {org_apache_flex_html_beads_models_TextModel} */
        set: function(value) {
            this.text_ = value;
            this.dispatchEvent('textChange');
        }
    }
});