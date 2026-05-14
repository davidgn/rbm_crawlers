package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes.dex */
final class zzrz implements zzrn {
    private final zzrq zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzrz(zzrq zzrqVar, String str, Object[] objArr) {
        this.zza = zzrqVar;
        this.zzb = str;
        this.zzc = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i = charAt & 8191;
        int i4 = 1;
        int i5 = 13;
        while (true) {
            int i6 = i4 + 1;
            char charAt2 = str.charAt(i4);
            if (charAt2 < 55296) {
                this.zzd = i | (charAt2 << i5);
                return;
            }
            i |= (charAt2 & 8191) << i5;
            i5 += 13;
            i4 = i6;
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrn
    public final zzrq zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrn
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrn
    public final int zzc() {
        int i = this.zzd;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
