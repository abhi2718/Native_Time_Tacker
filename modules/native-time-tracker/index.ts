// Reexport the native module. On web, it will be resolved to NativeTimeTrackerModule.web.ts
// and on native platforms to NativeTimeTrackerModule.ts
export { default } from './src/NativeTimeTrackerModule';
export { default as NativeTimeTrackerView } from './src/NativeTimeTrackerView';
export * from  './src/NativeTimeTracker.types';
