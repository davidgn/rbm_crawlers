package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class zzbhm {
    private final int zza;
    private final String zzb;
    private final Object zzc;
    private final Object zzd;

    public /* synthetic */ zzbhm(int i, String str, Object obj, Object obj2, byte[] bArr) {
        this.zza = i;
        this.zzb = str;
        this.zzc = obj;
        this.zzd = obj2;
        com.google.android.gms.ads.internal.client.zzba.zzb().zza(this);
    }

    public static zzbhm zzh(int i, String str, int i4, int i5) {
        return new zzbhi(1, str, Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static zzbhm zzi(int i, String str, long j5, long j6) {
        return new zzbhj(1, str, Long.valueOf(j5), Long.valueOf(j6));
    }

    public static zzbhm zzj(int i, String str, float f5, float f6) {
        return new zzbhk(1, str, Float.valueOf(f5), Float.valueOf(f6));
    }

    public static zzbhm zzk(int i, String str) {
        zzbhl zzbhlVar = new zzbhl(1, "gads:sdk_core_constants:experiment_id", null, null);
        com.google.android.gms.ads.internal.client.zzba.zzb().zzb(zzbhlVar);
        return zzbhlVar;
    }

    public static zzbhm zzl(int i, String str) {
        zzbhl zzbhlVar = new zzbhl(1, "gads:sdk_core_constants_service:experiment_id", null, null);
        com.google.android.gms.ads.internal.client.zzba.zzb().zzc(zzbhlVar);
        return zzbhlVar;
    }

    public abstract Object zza(Bundle bundle);

    public abstract void zzb(SharedPreferences.Editor editor, Object obj);

    public abstract Object zzc(JSONObject jSONObject);

    public abstract Object zzd(SharedPreferences sharedPreferences);

    public final String zze() {
        return this.zzb;
    }

    public final Object zzf() {
        return com.google.android.gms.ads.internal.client.zzba.zzc().zzb() ? this.zzd : this.zzc;
    }

    public final Object zzg() {
        return com.google.android.gms.ads.internal.client.zzba.zzc().zzd(this);
    }

    public final int zzm() {
        return this.zza;
    }
}
