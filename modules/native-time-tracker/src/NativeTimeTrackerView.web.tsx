import * as React from 'react';

import { NativeTimeTrackerViewProps } from './NativeTimeTracker.types';

export default function NativeTimeTrackerView(props: NativeTimeTrackerViewProps) {
  return (
    <div>
      <iframe
        style={{ flex: 1 }}
        src={props.url}
        onLoad={() => props.onLoad({ nativeEvent: { url: props.url } })}
      />
    </div>
  );
}
