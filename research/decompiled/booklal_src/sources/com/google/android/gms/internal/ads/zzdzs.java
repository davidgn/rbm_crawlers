package com.google.android.gms.internal.ads;

import e1.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdzs extends zzdzw {
    private final long zza;
    private final int zzb;

    public /* synthetic */ zzdzs(long j5, int i, byte[] bArr) {
        this.zza = j5;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzdzw) {
            zzdzw zzdzwVar = (zzdzw) obj;
            if (this.zza == zzdzwVar.zza() && this.zzb == zzdzwVar.zzb()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j5 = this.zza;
        return ((((int) (j5 ^ (j5 >>> 32))) ^ 1000003) * 1000003) ^ this.zzb;
    }

    public final String toString() {
        long j5 = this.zza;
        int length = String.valueOf(j5).length();
        int i = this.zzb;
        StringBuilder sb = new StringBuilder(length + 34 + String.valueOf(i).length() + 1);
        com.google.android.gms.ads.internal.util.client.a.p(sb, "OnDeviceStorageKey{id=", j5, ", eventType=");
        return i.b(i, "}", sb);
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public final long zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public final int zzb() {
        return this.zzb;
    }
}
