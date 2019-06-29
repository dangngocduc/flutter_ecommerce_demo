package com.dangngocduc.flutter_shopping_demo

import android.content.Context
import com.crashlytics.android.Crashlytics
import io.fabric.sdk.android.Fabric
import io.fabric.sdk.android.InitializationException


class MyApplication : io.flutter.app.FlutterApplication() {
    override fun onCreate() {
        super.onCreate()
        Fabric.with(this, Crashlytics())
    }
}