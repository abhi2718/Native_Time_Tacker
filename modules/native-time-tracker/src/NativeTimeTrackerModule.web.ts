import { registerWebModule, NativeModule } from 'expo';

import { ChangeEventPayload } from './NativeTimeTracker.types';

type NativeTimeTrackerModuleEvents = {
  onChange: (params: ChangeEventPayload) => void;
}

class NativeTimeTrackerModule extends NativeModule<NativeTimeTrackerModuleEvents> {
  PI = Math.PI;
  async setValueAsync(value: string): Promise<void> {
    this.emit('onChange', { value });
  }
  hello() {
    return 'Hello world! 👋';
  }
};

export default registerWebModule(NativeTimeTrackerModule);
