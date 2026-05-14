package com.google.android.gms.internal.ads;

import e1.i;
/* loaded from: classes.dex */
final class zzgpw extends zzgqy {
    private final String zza;
    private final String zzb;

    public /* synthetic */ zzgpw(String str, String str2, byte[] bArr) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgqy) {
            zzgqy zzgqyVar = (zzgqy) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzgqyVar.zza()) : zzgqyVar.zza() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzgqyVar.zzb()) : zzgqyVar.zzb() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.zza;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.zzb;
        return ((hashCode ^ 1000003) * 1000003) ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        String str = this.zza;
        int length = String.valueOf(str).length();
        String str2 = this.zzb;
        StringBuilder sb = new StringBuilder(length + 49 + String.valueOf(str2).length() + 1);
        i.j(sb, "OverlayDisplayUpdateRequest{sessionToken=", str, ", appId=", str2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgqy
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgqy
    public final String zzb() {
        return this.zzb;
    }
}
