package com.google.android.gms.ads;

import C.a;
import android.content.Context;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.zzay;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.firebase.storage.internal.ExponentialBackoffSender;
/* loaded from: classes.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private final int zzb;
    private final int zzc;
    private final String zzd;
    private boolean zze;
    private boolean zzf;
    private boolean zzg;
    private int zzh;
    private boolean zzi;
    private int zzj;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, ExponentialBackoffSender.RND_MAX, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, 600, "160x600_as");
    @Deprecated
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    public static final AdSize INVALID = new AdSize(0, 0, "invalid");
    public static final AdSize zza = new AdSize(50, 50, "50x50_mb");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AdSize(int r6, int r7) {
        /*
            r5 = this;
            r0 = -1
            if (r6 != r0) goto L6
            java.lang.String r0 = "FULL"
            goto La
        L6:
            java.lang.String r0 = java.lang.String.valueOf(r6)
        La:
            r1 = -2
            if (r7 != r1) goto L10
            java.lang.String r1 = "AUTO"
            goto L14
        L10:
            java.lang.String r1 = java.lang.String.valueOf(r7)
        L14:
            java.lang.String r2 = java.lang.String.valueOf(r0)
            int r2 = r2.length()
            java.lang.String r3 = java.lang.String.valueOf(r1)
            int r2 = r2 + 1
            int r3 = r3.length()
            int r3 = r3 + r2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r3 = r3 + 3
            r2.<init>(r3)
            java.lang.String r3 = "x"
            java.lang.String r4 = "_as"
            java.lang.String r0 = C.a.r(r2, r0, r3, r1, r4)
            r5.<init>(r6, r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.AdSize.<init>(int, int):void");
    }

    @Deprecated
    public static AdSize getCurrentOrientationAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzk = com.google.android.gms.ads.internal.util.client.zzf.zzk(context, i, 50, 0);
        zzk.zze = true;
        return zzk;
    }

    public static AdSize getCurrentOrientationInlineAdaptiveBannerAdSize(Context context, int i) {
        int zzr = com.google.android.gms.ads.internal.util.client.zzf.zzr(context, 0);
        if (zzr == -1) {
            return INVALID;
        }
        AdSize adSize = new AdSize(i, 0);
        adSize.zzh = zzr;
        adSize.zzg = true;
        return adSize;
    }

    public static AdSize getInlineAdaptiveBannerAdSize(int i, int i4) {
        AdSize adSize = new AdSize(i, 0);
        adSize.zzh = i4;
        adSize.zzg = true;
        if (i4 < 32) {
            StringBuilder sb = new StringBuilder(String.valueOf(i4).length() + 118);
            sb.append("The maximum height set for the inline adaptive ad size was ");
            sb.append(i4);
            sb.append(" dp, which is below the minimum recommended value of 32 dp.");
            zzo.zzi(sb.toString());
        }
        return adSize;
    }

    @Deprecated
    public static AdSize getLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzk = com.google.android.gms.ads.internal.util.client.zzf.zzk(context, i, 50, 2);
        zzk.zze = true;
        return zzk;
    }

    public static AdSize getLandscapeInlineAdaptiveBannerAdSize(Context context, int i) {
        int zzr = com.google.android.gms.ads.internal.util.client.zzf.zzr(context, 2);
        AdSize adSize = new AdSize(i, 0);
        if (zzr == -1) {
            return INVALID;
        }
        adSize.zzh = zzr;
        adSize.zzg = true;
        return adSize;
    }

    public static AdSize getLargeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzl = com.google.android.gms.ads.internal.util.client.zzf.zzl(context, i, 0);
        zzl.zzf = true;
        return zzl;
    }

    public static AdSize getLargeLandscapeAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzl = com.google.android.gms.ads.internal.util.client.zzf.zzl(context, i, 2);
        zzl.zzf = true;
        return zzl;
    }

    public static AdSize getLargePortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzl = com.google.android.gms.ads.internal.util.client.zzf.zzl(context, i, 1);
        zzl.zzf = true;
        return zzl;
    }

    @Deprecated
    public static AdSize getPortraitAnchoredAdaptiveBannerAdSize(Context context, int i) {
        AdSize zzk = com.google.android.gms.ads.internal.util.client.zzf.zzk(context, i, 50, 1);
        zzk.zze = true;
        return zzk;
    }

    public static AdSize getPortraitInlineAdaptiveBannerAdSize(Context context, int i) {
        int zzr = com.google.android.gms.ads.internal.util.client.zzf.zzr(context, 1);
        AdSize adSize = new AdSize(i, 0);
        if (zzr == -1) {
            return INVALID;
        }
        adSize.zzh = zzr;
        adSize.zzg = true;
        return adSize;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof AdSize) {
            AdSize adSize = (AdSize) obj;
            return this.zzb == adSize.zzb && this.zzc == adSize.zzc && this.zzd.equals(adSize.zzd);
        }
        return false;
    }

    public int getHeight() {
        return this.zzc;
    }

    public int getHeightInPixels(Context context) {
        int i = this.zzc;
        if (i == -4 || i == -3) {
            return -1;
        }
        if (i != -2) {
            zzay.zza();
            return com.google.android.gms.ads.internal.util.client.zzf.zzE(context, i);
        }
        return zzr.zza(context.getResources().getDisplayMetrics());
    }

    public int getWidth() {
        return this.zzb;
    }

    public int getWidthInPixels(Context context) {
        int i = this.zzb;
        if (i != -3) {
            if (i != -1) {
                zzay.zza();
                return com.google.android.gms.ads.internal.util.client.zzf.zzE(context, i);
            }
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            Parcelable.Creator<zzr> creator = zzr.CREATOR;
            return displayMetrics.widthPixels;
        }
        return -1;
    }

    public int hashCode() {
        return this.zzd.hashCode();
    }

    public boolean isAutoHeight() {
        return this.zzc == -2;
    }

    public boolean isFluid() {
        return this.zzb == -3 && this.zzc == -4;
    }

    public boolean isFullWidth() {
        return this.zzb == -1;
    }

    public String toString() {
        return this.zzd;
    }

    public final boolean zza() {
        return this.zze;
    }

    public final boolean zzb() {
        return this.zzf;
    }

    public final boolean zzc() {
        return this.zzg;
    }

    public final void zzd(boolean z4) {
        this.zzg = true;
    }

    public final void zze(int i) {
        this.zzh = i;
    }

    public final int zzf() {
        return this.zzh;
    }

    public final boolean zzg() {
        return this.zzi;
    }

    public final void zzh(boolean z4) {
        this.zzi = true;
    }

    public final int zzi() {
        return this.zzj;
    }

    public final void zzj(int i) {
        this.zzj = i;
    }

    public AdSize(int i, int i4, String str) {
        if (i < 0 && i != -1 && i != -3) {
            throw new IllegalArgumentException(a.i(i, "Invalid width for AdSize: ", new StringBuilder(String.valueOf(i).length() + 26)));
        }
        if (i4 < 0 && i4 != -2 && i4 != -4) {
            throw new IllegalArgumentException(a.i(i4, "Invalid height for AdSize: ", new StringBuilder(String.valueOf(i4).length() + 27)));
        }
        this.zzb = i;
        this.zzc = i4;
        this.zzd = str;
    }
}
