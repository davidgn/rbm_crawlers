package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class zzeh extends zzej {
    private final byte[] zzb;
    private int zzc;
    private int zzd;
    private int zze;

    public /* synthetic */ zzeh(byte[] bArr, int i, int i4, boolean z4, zzeg zzegVar) {
        super(null);
        this.zze = Integer.MAX_VALUE;
        this.zzb = bArr;
        this.zzc = 0;
    }

    public final int zza(int i) {
        int i4 = this.zze;
        this.zze = 0;
        int i5 = this.zzc + this.zzd;
        this.zzc = i5;
        if (i5 > 0) {
            this.zzd = i5;
            this.zzc = 0;
        } else {
            this.zzd = 0;
        }
        return i4;
    }
}
