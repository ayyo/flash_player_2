package ayyo.player.modules.splash {
	import ayyo.player.events.ModuleEvent;
	import ayyo.player.modules.base.impl.AbstractModule;
	import ayyo.player.modules.splash.controller.config.SplashCommandsMapping;

	/**
	 * @author Aziz Zaynutdinov (actionsmile at icloud.com)
	 */
	public class SplashScreen extends AbstractModule {
		public function SplashScreen(autoCreate : Boolean = false) {
			super(autoCreate);
		}

		override protected function onContextInited() : void {
			this.context.	configure(SplashCommandsMapping);
			this.dispatcher.addEventListener(ModuleEvent.READY, this.onModuleReady);
			super.onContextInited();
		}
		
		//	Handlers
		private function onModuleReady(event : ModuleEvent) : void {
			this.ready.dispatch();
		}
	}
}
