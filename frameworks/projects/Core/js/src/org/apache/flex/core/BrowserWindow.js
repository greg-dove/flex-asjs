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

goog.provide('org.apache.flex.core.BrowserWindow');



/**
 * @constructor
 */
org.apache.flex.core.BrowserWindow = function() {
};


/**
 * Metadata
 *
 * @type {Object.<string, Array.<Object>>}
 */
org.apache.flex.core.BrowserWindow.prototype.FLEXJS_CLASS_INFO =
    { names: [{ name: 'BrowserWindow',
                qName: 'org.apache.flex.core.BrowserWindow'}]};


/**
 * @export
 * @param {string} url The url.
 * @param {string} options The window name.
 */
org.apache.flex.core.BrowserWindow.open = function(url, options) {
  window.open(url, options);
};

