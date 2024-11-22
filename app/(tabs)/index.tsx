import { Image, StyleSheet, Platform } from "react-native";
import { NativeTimeTrackerView } from "../../modules/native-time-tracker";
import { HelloWave } from "@/components/HelloWave";
import ParallaxScrollView from "@/components/ParallaxScrollView";
import { ThemedText } from "@/components/ThemedText";
import { ThemedView } from "@/components/ThemedView";
export default function HomeScreen() {
  return (
    <NativeTimeTrackerView
      url="https://www.example.com"
      onLoad={({ nativeEvent: { url } }) => console.log(`Loaded: ${url}`)}
      style={styles.view}
    />
  );
}

const styles = StyleSheet.create({
  titleContainer: {
    flexDirection: "row",
    alignItems: "center",
    gap: 8,
  },
  stepContainer: {
    gap: 8,
    marginBottom: 8,
  },
  reactLogo: {
    height: 178,
    width: 290,
    bottom: 0,
    left: 0,
    position: "absolute",
  },
  view: {
    flex: 1,
    height: 200,
  },
});
