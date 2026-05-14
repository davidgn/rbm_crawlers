package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes.dex */
final class zzank {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;

    private zzank(int i, int i4, int i5, int i6, int i7, int i8) {
        this.zza = i;
        this.zzb = i4;
        this.zzc = i5;
        this.zzd = i6;
        this.zze = i7;
        this.zzf = i8;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzank zza(String str) {
        boolean z4;
        zzgsj.zza(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = 0;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        while (true) {
            int length = split.length;
            if (i >= length) {
                if (i5 == -1 || i6 == -1 || i8 == -1) {
                    return null;
                }
                return new zzank(i4, i5, i6, i7, i8, length);
            }
            String zza = zzgrs.zza(split[i].trim());
            switch (zza.hashCode()) {
                case 100571:
                    if (zza.equals("end")) {
                        z4 = true;
                        break;
                    }
                    z4 = true;
                    break;
                case 3556653:
                    if (zza.equals("text")) {
                        z4 = true;
                        break;
                    }
                    z4 = true;
                    break;
                case 102749521:
                    if (zza.equals("layer")) {
                        z4 = false;
                        break;
                    }
                    z4 = true;
                    break;
                case 109757538:
                    if (zza.equals("start")) {
                        z4 = true;
                        break;
                    }
                    z4 = true;
                    break;
                case 109780401:
                    if (zza.equals("style")) {
                        z4 = true;
                        break;
                    }
                    z4 = true;
                    break;
                default:
                    z4 = true;
                    break;
            }
            if (!z4) {
                i4 = i;
            } else if (z4) {
                i5 = i;
            } else if (z4) {
                i6 = i;
            } else if (z4) {
                i7 = i;
            } else if (z4) {
                i8 = i;
            }
            i++;
        }
    }
}
