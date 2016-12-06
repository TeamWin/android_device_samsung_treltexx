## TWRP device tree for Samsung Galaxy Note 4 Exynos LTE (treltexx)

Add to `.repo/local_manifests/treltexx.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/treltexx" name="android_device_samsung_treltexx" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_treltexx-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/jcadduono/android_kernel_samsung_universal5433/tree/twrp-6.0
