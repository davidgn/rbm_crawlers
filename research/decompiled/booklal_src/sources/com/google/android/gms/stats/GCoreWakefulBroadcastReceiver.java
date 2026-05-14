package com.google.android.gms.stats;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import h0.AbstractC0444a;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public abstract class GCoreWakefulBroadcastReceiver extends AbstractC0444a {
    @KeepForSdk
    public static boolean completeWakefulIntent(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        return AbstractC0444a.completeWakefulIntent(intent);
    }
}
