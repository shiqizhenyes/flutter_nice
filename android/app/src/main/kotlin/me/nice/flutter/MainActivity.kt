package me.nice.flutter

import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.BatteryManager
import android.os.Build
import android.os.Bundle
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {

    private val CHANNEL = "me.nice.flutter/battery"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger, CHANNEL)
                .setMethodCallHandler { call, result ->
                    val battery = getBatteryLevel()
                    if (call.method == "getBatteryLevel") {
                        if (battery != -1) {
                            result.success(battery)
                        } else {
                            result.error("UNAVAILABLE",
                                    "Battery level not unavailable", battery)
                        }
                    } else {
                        result.notImplemented()
                    }
                }
    }

    private fun getBatteryLevel(): Int {
        var batteryLevel = -1
        batteryLevel = if (Build.VERSION.SDK_INT == Build.VERSION_CODES.LOLLIPOP) {
            val batteryManager: BatteryManager = getSystemService(Context.BATTERY_SERVICE)
                    as BatteryManager
            batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        } else {
            val intent = ContextWrapper(context)
                    .registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            (intent?.getIntExtra(BatteryManager.EXTRA_LEVEL, - 1)
                    ?.times(100))
                    ?.div(intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1))!!
        }
        return batteryLevel
    }


}
