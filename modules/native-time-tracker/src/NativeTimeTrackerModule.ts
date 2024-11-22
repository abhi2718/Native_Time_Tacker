import { NativeModule, requireNativeModule } from 'expo';

import { NativeTimeTrackerModuleEvents } from './NativeTimeTracker.types';

declare class NativeTimeTrackerModule extends NativeModule<NativeTimeTrackerModuleEvents> {
  PI: number;
  hello(): string;
  setValueAsync(value: string): Promise<void>;
}

// This call loads the native module object from the JSI.
export default requireNativeModule<NativeTimeTrackerModule>('NativeTimeTracker');
