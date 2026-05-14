package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes.dex */
final class zzanx {
    public static zzany zza(zzany zzanyVar, String[] strArr, Map map) {
        int length;
        int i = 0;
        if (zzanyVar == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (zzany) map.get(strArr[0]);
            }
            if (length2 > 1) {
                zzany zzanyVar2 = new zzany();
                while (i < length2) {
                    zzanyVar2.zzr((zzany) map.get(strArr[i]));
                    i++;
                }
                return zzanyVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            zzanyVar.zzr((zzany) map.get(strArr[0]));
            return zzanyVar;
        } else if (strArr != null && (length = strArr.length) > 1) {
            while (i < length) {
                zzanyVar.zzr((zzany) map.get(strArr[i]));
                i++;
            }
        }
        return zzanyVar;
    }
}
