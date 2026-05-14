package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes.dex */
final class zzpn extends zzpp {
    private int zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzpn(byte[] bArr, int i, int i4, boolean z4, zzpo zzpoVar) {
        super(null);
        this.zzd = Integer.MAX_VALUE;
        this.zzb = 0;
    }

    public final int zza(int i) {
        int i4 = this.zzd;
        this.zzd = 0;
        int i5 = this.zzb + this.zzc;
        this.zzb = i5;
        if (i5 > 0) {
            this.zzc = i5;
            this.zzb = 0;
        } else {
            this.zzc = 0;
        }
        return i4;
    }
}
