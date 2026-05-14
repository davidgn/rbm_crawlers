package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbha;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes.dex */
public final class zzat {
    private final String zza;

    public final Set zza() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zza.toLowerCase(Locale.ROOT));
        return hashSet;
    }

    public final String zzb() {
        return this.zza.toLowerCase(Locale.ROOT);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzbha.zza.EnumC0000zza zzc() {
        char c5;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c5 = 2;
                    break;
                }
                c5 = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c5 = 1;
                    break;
                }
                c5 = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c5 = 3;
                    break;
                }
                c5 = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c5 = 0;
                    break;
                }
                c5 = 65535;
                break;
            default:
                c5 = 65535;
                break;
        }
        return c5 != 0 ? c5 != 1 ? c5 != 2 ? c5 != 3 ? zzbha.zza.EnumC0000zza.AD_INITIATER_UNSPECIFIED : zzbha.zza.EnumC0000zza.REWARD_BASED_VIDEO_AD : zzbha.zza.EnumC0000zza.AD_LOADER : zzbha.zza.EnumC0000zza.INTERSTITIAL : zzbha.zza.EnumC0000zza.BANNER;
    }
}
