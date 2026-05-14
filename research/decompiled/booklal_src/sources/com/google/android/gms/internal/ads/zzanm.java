package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
/* loaded from: classes.dex */
final class zzanm {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final int zzj;
    public final int zzk;

    private zzanm(int i, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        this.zza = i;
        this.zzb = i4;
        this.zzc = i5;
        this.zzd = i6;
        this.zze = i7;
        this.zzf = i8;
        this.zzg = i9;
        this.zzh = i10;
        this.zzi = i11;
        this.zzj = i12;
        this.zzk = i13;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzanm zza(String str) {
        char c5;
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = 0;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        while (true) {
            int length = split.length;
            if (i >= length) {
                if (i4 != -1) {
                    return new zzanm(i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, length);
                }
                return null;
            }
            String zza = zzgrs.zza(split[i].trim());
            switch (zza.hashCode()) {
                case -1178781136:
                    if (zza.equals("italic")) {
                        c5 = 6;
                        break;
                    }
                    c5 = 65535;
                    break;
                case -1026963764:
                    if (zza.equals("underline")) {
                        c5 = 7;
                        break;
                    }
                    c5 = 65535;
                    break;
                case -192095652:
                    if (zza.equals("strikeout")) {
                        c5 = '\b';
                        break;
                    }
                    c5 = 65535;
                    break;
                case -70925746:
                    if (zza.equals("primarycolour")) {
                        c5 = 2;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 3029637:
                    if (zza.equals("bold")) {
                        c5 = 5;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 3373707:
                    if (zza.equals(AppMeasurementSdk.ConditionalUserProperty.NAME)) {
                        c5 = 0;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 366554320:
                    if (zza.equals("fontsize")) {
                        c5 = 4;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 767321349:
                    if (zza.equals("borderstyle")) {
                        c5 = '\t';
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1767875043:
                    if (zza.equals("alignment")) {
                        c5 = 1;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1988365454:
                    if (zza.equals("outlinecolour")) {
                        c5 = 3;
                        break;
                    }
                    c5 = 65535;
                    break;
                default:
                    c5 = 65535;
                    break;
            }
            switch (c5) {
                case 0:
                    i4 = i;
                    break;
                case 1:
                    i5 = i;
                    break;
                case 2:
                    i6 = i;
                    break;
                case 3:
                    i7 = i;
                    break;
                case 4:
                    i8 = i;
                    break;
                case 5:
                    i9 = i;
                    break;
                case 6:
                    i10 = i;
                    break;
                case 7:
                    i11 = i;
                    break;
                case '\b':
                    i12 = i;
                    break;
                case '\t':
                    i13 = i;
                    break;
            }
            i++;
        }
    }
}
