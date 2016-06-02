/**
 * BigBlueButton open source conferencing system - http://www.bigbluebutton.org/
 *
 * Copyright (c) 2015 BigBlueButton Inc. and by respective authors (see below).
 *
 * This program is free software; you can redistribute it and/or modify it under the
 * terms of the GNU Lesser General Public License as published by the Free Software
 * Foundation; either version 3.0 of the License, or (at your option) any later
 * version.
 *
 * BigBlueButton is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
 * PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License along
 * with BigBlueButton; if not, see <http://www.gnu.org/licenses/>.
 *
 */
package org.bigbluebutton.main.model.users {
	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class BreakoutRoom {
		public static const NONE:String = "none";
		
		public static const SELF:String = "self";
		
		public static const OTHER:String = "other";
		
		public var breakoutId:String;
		
		public var name:String;
		
		public var users:ArrayCollection;
		
		// Can be one of three following values self, none, other
		public var listenStatus:String = NONE;
		
		public function BreakoutRoom() {
			users = new ArrayCollection();
		}
		
		public function get numberOfUsers():int {
			return users.length;
		}

	}
}
