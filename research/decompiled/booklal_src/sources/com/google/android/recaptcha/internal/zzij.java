package com.google.android.recaptcha.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzij implements zzhv {
    private final zzhy zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzij(zzhy zzhyVar, String str, Object[] objArr) {
        this.zza = zzhyVar;
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

    @Override // com.google.android.recaptcha.internal.zzhv
    public final zzhy zza() {
        return this.zza;
    }

    @Override // com.google.android.recaptcha.internal.zzhv
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.recaptcha.internal.zzhv
    public final int zzc() {
        return (this.zzd & 1) == 1 ? 1 : 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
