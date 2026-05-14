package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.Objects;
/* loaded from: classes.dex */
final class zzcdh implements SharedPreferences.OnSharedPreferenceChangeListener {
    final /* synthetic */ zzcdk zza;
    private final String zzb;

    public zzcdh(zzcdk zzcdkVar, String str) {
        Objects.requireNonNull(zzcdkVar);
        this.zza = zzcdkVar;
        this.zzb = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        zzcdk zzcdkVar = this.zza;
        synchronized (zzcdkVar) {
            try {
                for (zzcdi zzcdiVar : zzcdkVar.zzd()) {
                    zzcdiVar.zza(sharedPreferences, this.zzb, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
