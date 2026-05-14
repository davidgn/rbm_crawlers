package com.google.android.gms.internal.ads;

import android.os.IBinder;
import e1.i;
/* loaded from: classes.dex */
final class zzgps extends zzgqt {
    private final IBinder zza;
    private final String zzb;
    private final int zzc;
    private final float zzd;
    private final int zze;
    private final String zzf;

    public /* synthetic */ zzgps(IBinder iBinder, String str, int i, float f5, int i4, int i5, String str2, int i6, String str3, String str4, String str5, byte[] bArr) {
        this.zza = iBinder;
        this.zzb = str;
        this.zzc = i;
        this.zzd = f5;
        this.zze = i6;
        this.zzf = str4;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgqt) {
            zzgqt zzgqtVar = (zzgqt) obj;
            if (this.zza.equals(zzgqtVar.zza()) && ((str = this.zzb) != null ? str.equals(zzgqtVar.zzb()) : zzgqtVar.zzb() == null) && this.zzc == zzgqtVar.zzc() && Float.floatToIntBits(this.zzd) == Float.floatToIntBits(zzgqtVar.zzd())) {
                zzgqtVar.zze();
                zzgqtVar.zzf();
                zzgqtVar.zzg();
                if (this.zze == zzgqtVar.zzh()) {
                    zzgqtVar.zzi();
                    String str2 = this.zzf;
                    if (str2 != null ? str2.equals(zzgqtVar.zzj()) : zzgqtVar.zzj() == null) {
                        zzgqtVar.zzk();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode() ^ 1000003;
        String str = this.zzb;
        int hashCode2 = (((((hashCode * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.zzc) * 1000003) ^ Float.floatToIntBits(this.zzd);
        int i = this.zze;
        String str2 = this.zzf;
        return ((((hashCode2 * 1525764945) ^ i) * (-721379959)) ^ (str2 != null ? str2.hashCode() : 0)) * 1000003;
    }

    public final String toString() {
        String obj = this.zza.toString();
        int length = obj.length();
        String str = this.zzb;
        int length2 = String.valueOf(str).length();
        int i = this.zzc;
        int length3 = String.valueOf(i).length();
        float f5 = this.zzd;
        int length4 = String.valueOf(f5).length();
        int i4 = this.zze;
        int length5 = String.valueOf(i4).length();
        String str2 = this.zzf;
        StringBuilder sb = new StringBuilder(length + 46 + length2 + 16 + length3 + 23 + length4 + 65 + length5 + 33 + String.valueOf(str2).length() + 30);
        i.j(sb, "OverlayDisplayShowRequest{windowToken=", obj, ", appId=", str);
        sb.append(", layoutGravity=");
        sb.append(i);
        sb.append(", layoutVerticalMargin=");
        sb.append(f5);
        sb.append(", displayMode=0, triggerMode=0, sessionToken=null, windowWidthPx=");
        sb.append(i4);
        sb.append(", deeplinkUrl=null, adFieldEnifd=");
        sb.append(str2);
        sb.append(", thirdPartyAuthCallerId=null}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final IBinder zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final String zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final float zzd() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final int zze() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final int zzf() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final String zzg() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final int zzh() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final String zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final String zzj() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgqt
    public final String zzk() {
        return null;
    }
}
