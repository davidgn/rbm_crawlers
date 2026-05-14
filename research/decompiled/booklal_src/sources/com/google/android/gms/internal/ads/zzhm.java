package com.google.android.gms.internal.ads;

import android.net.Uri;
import e1.i;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzhm {
    public static final /* synthetic */ int zzh = 0;
    public final Uri zza;
    public final int zzb;
    public final byte[] zzc;
    public final Map zzd;
    public final long zze;
    public final long zzf;
    public final int zzg;

    static {
        zzal.zzb("media3.datasource");
    }

    public /* synthetic */ zzhm(Uri uri, long j5, int i, byte[] bArr, Map map, long j6, long j7, String str, int i4, Object obj, byte[] bArr2) {
        this(uri, 0L, 1, null, map, j6, j7, null, i4, null);
    }

    public final String toString() {
        String obj = this.zza.toString();
        int length = obj.length();
        long j5 = this.zze;
        int length2 = String.valueOf(j5).length();
        long j6 = this.zzf;
        int length3 = String.valueOf(j6).length();
        int i = this.zzg;
        StringBuilder sb = new StringBuilder(length + 15 + length2 + 2 + length3 + 8 + String.valueOf(i).length() + 1);
        sb.append("DataSpec[GET ");
        sb.append(obj);
        sb.append(", ");
        sb.append(j5);
        com.google.android.gms.ads.internal.util.client.a.p(sb, ", ", j6, ", null, ");
        return i.b(i, "]", sb);
    }

    public final boolean zza(int i) {
        return (this.zzg & i) == i;
    }

    public final zzhl zzb() {
        return new zzhl(this, null);
    }

    private zzhm(Uri uri, long j5, int i, byte[] bArr, Map map, long j6, long j7, String str, int i4, Object obj) {
        boolean z4 = false;
        boolean z5 = j6 >= 0;
        zzgsj.zza(z5);
        zzgsj.zza(z5);
        if (j7 <= 0) {
            j7 = j7 == -1 ? -1L : j7;
            zzgsj.zza(z4);
            uri.getClass();
            this.zza = uri;
            this.zzb = 1;
            this.zzc = null;
            this.zzd = Collections.unmodifiableMap(new HashMap(map));
            this.zze = j6;
            this.zzf = j7;
            this.zzg = i4;
        }
        z4 = true;
        zzgsj.zza(z4);
        uri.getClass();
        this.zza = uri;
        this.zzb = 1;
        this.zzc = null;
        this.zzd = Collections.unmodifiableMap(new HashMap(map));
        this.zze = j6;
        this.zzf = j7;
        this.zzg = i4;
    }

    @Deprecated
    public zzhm(Uri uri, long j5, long j6, String str) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j5, j6, null, 0, null);
    }
}
