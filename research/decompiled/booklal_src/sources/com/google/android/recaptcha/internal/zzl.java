package com.google.android.recaptcha.internal;

import com.google.android.gms.location.GeofenceStatusCodes;
/* loaded from: classes2.dex */
public final class zzl {
    public static final zzk zza = new zzk(null);
    public static final zzl zzb = new zzl(9999);
    public static final zzl zzc = new zzl(1000);
    public static final zzl zzd = new zzl(1001);
    public static final zzl zze = new zzl(1002);
    public static final zzl zzf = new zzl(1003);
    public static final zzl zzg = new zzl(GeofenceStatusCodes.GEOFENCE_INSUFFICIENT_LOCATION_PERMISSION);
    public static final zzl zzh = new zzl(GeofenceStatusCodes.GEOFENCE_REQUEST_TOO_FREQUENT);
    public static final zzl zzi = new zzl(1006);
    public static final zzl zzj = new zzl(1007);
    public static final zzl zzk = new zzl(1008);
    public static final zzl zzl = new zzl(1009);
    public static final zzl zzm = new zzl(1010);
    private final int zzn;

    private zzl(int i) {
        this.zzn = i;
    }

    public final int zza() {
        return this.zzn;
    }
}
