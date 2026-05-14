package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes.dex */
public interface zzfym {
    static String zzb(File file, String str, zzfyq zzfyqVar) {
        return new File(file, str).getPath();
    }

    default String zza(File file, String str) {
        return zzb(file, str, zzfyq.zza);
    }
}
