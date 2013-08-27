package ayyo.player.modules.info.impl {
	import ayyo.player.core.model.api.IInfoObject;
	/**
	 * @author Aziz Zaynutdinov (actionsmile at icloud.com)
	 */
	public class ModuleInfo implements IInfoObject {
		/**
		 * @private
		 */
		private var _name : String;
		/**
		 * @private
		 */
		private var _url : String;
		/**
		 * @private
		 */
		private var _config : String;

		public function ModuleInfo(source : Object) {
			for (var property : String in source) {
				if (property in this) this["_" + property] = source[property];
			}
		}

		public function get name() : String {
			return this._name;
		}

		public function set name(value : String) : void {
			if (this._name != value) this._name = value;
		}

		public function get config() : String {
			return this._config;
		}

		public function set config(value : String) : void {
			if (this._config != value) this._config = value;
		}

		public function get url() : String {
			return this._url;
		}

		public function set url(value : String) : void {
			if (this._url != value) this._url = value;
		}
	}
}
