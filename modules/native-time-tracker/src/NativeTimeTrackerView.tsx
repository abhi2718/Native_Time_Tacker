import { requireNativeView } from 'expo';
import * as React from 'react';

import { NativeTimeTrackerViewProps } from './NativeTimeTracker.types';

const NativeView: React.ComponentType<NativeTimeTrackerViewProps> =
  requireNativeView('NativeTimeTracker');

export default function NativeTimeTrackerView(props: NativeTimeTrackerViewProps) {
  return <NativeView {...props} />;
}
