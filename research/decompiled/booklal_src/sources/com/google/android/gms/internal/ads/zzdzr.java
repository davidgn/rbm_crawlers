package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdzr extends zzdzv {
    private long zza;
    private int zzb;
    private byte zzc;

    @Override // com.google.android.gms.internal.ads.zzdzv
    public final zzdzv zza(long j5) {
        this.zza = j5;
        this.zzc = (byte) (this.zzc | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdzv
    public final zzdzv zzb(int i) {
        this.zzb = i;
        this.zzc = (byte) (this.zzc | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdzv
    public final zzdzw zzc() {
        if (this.zzc != 3) {
            StringBuilder sb = new StringBuilder();
            if ((this.zzc & 1) == 0) {
                sb.append(" id");
            }
            if ((this.zzc & 2) == 0) {
                sb.append(" eventType");
            }
            throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
        }
        return new zzdzs(this.zza, this.zzb, null);
    }
}
