package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;
/* loaded from: classes.dex */
final class zzgbj {
    private static zzgbj zza;
    private final String zzb;
    private final SharedPreferences zzc;

    private zzgbj(Context context) {
        this.zzb = context.getPackageName();
        this.zzc = context.getSharedPreferences("paid_storage_sp", 0);
    }

    public static zzgbj zza(Context context) {
        if (zza == null) {
            zza = new zzgbj(context);
        }
        return zza;
    }

    public final void zzb(String str, Object obj) {
        boolean commit;
        if (obj instanceof String) {
            commit = this.zzc.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            commit = this.zzc.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else if (obj instanceof Boolean) {
            commit = this.zzc.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        } else if (!(obj instanceof Integer)) {
            String valueOf = String.valueOf(obj.getClass());
            String str2 = this.zzb;
            Log.e("GpidLifecycleSPHandler", C.a.r(new StringBuilder(valueOf.length() + 33 + String.valueOf(str2).length()), "Unexpected object class ", valueOf, " for app ", str2));
            String str3 = this.zzb;
            throw new IOException(C.a.r(new StringBuilder(str.length() + 25 + String.valueOf(str3).length()), "Failed to store ", str, " for app ", str3));
        } else {
            commit = this.zzc.edit().putInt(str, ((Integer) obj).intValue()).commit();
        }
        if (commit) {
            return;
        }
        String str32 = this.zzb;
        throw new IOException(C.a.r(new StringBuilder(str.length() + 25 + String.valueOf(str32).length()), "Failed to store ", str, " for app ", str32));
    }

    public final String zzc(String str, String str2) {
        return this.zzc.getString(str, null);
    }

    public final long zzd(String str, long j5) {
        return this.zzc.getLong(str, -1L);
    }

    public final boolean zze(String str, boolean z4) {
        return this.zzc.getBoolean(str, true);
    }

    public final void zzf(String str) {
        if (this.zzc.edit().remove(str).commit()) {
            return;
        }
        String str2 = this.zzb;
        throw new IOException(C.a.r(new StringBuilder(str.length() + 26 + String.valueOf(str2).length()), "Failed to remove ", str, " for app ", str2));
    }

    public final boolean zzg(String str) {
        return this.zzc.contains(str);
    }
}
