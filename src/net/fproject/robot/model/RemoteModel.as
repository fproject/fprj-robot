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
package net.fproject.robot.model
{
	import mx.collections.ArrayCollection;

	[RemoteClass(alias="RModel")]
	public class RemoteModel extends RemoteItemBase
	{
		[Bindable]
		public var properties:ArrayCollection;
		
		public function RemoteModel(n:String='new')
		{
			name = n;
			properties = new ArrayCollection;
		}
		
		public function getPackageName():String
		{
			var p:Array = name.split('.');
			p.pop();
			return p.join('.');	
		}
		
		public function getModelName():String
		{
			var p:Array = name.split('.');
			return p.pop();	
		}
		
		public function getAMFPackageName():String
		{
			var p:Array = name.split('.');
			p.pop();
			var pn:String = p.join('/');
			if( pn == '' )
			{
				return '';
			} else {
				return pn+'/';
			}
		}

	}
}