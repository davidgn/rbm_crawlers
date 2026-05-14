package com.google.android.gms.internal.ads;

import android.os.Environment;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
final /* synthetic */ class zzbhb implements Callable {
    static final /* synthetic */ zzbhb zza = new zzbhb();

    private /* synthetic */ zzbhb() {
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
    }
}
